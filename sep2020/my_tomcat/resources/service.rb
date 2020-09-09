#resource_name :openjdk_pkg_install
#provides :openjdk_pkg_install

# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html

# This property sets the url from which tomcat can be downloaded
property :tomcat_download_url, String, default: 'http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.37/bin/apache-tomcat-9.0.37.tar.gz'
property :username, String, default: 'tomcat'
property :groupname, String, default: 'tomcat'
property :tomcat_folder, String, default: '/opt/tomcat'
property :tomcat_service_name, String, name_property: true

# This sets the default action
default_action :install

action :install do
    # ensure java is installed
    openjdk_pkg_install '11'

    group_name = new_resource.groupname

    group group_name do
    action :create
    end

    username = new_resource.groupname

    user username do
    comment 'This is tomcat user'
    gid group_name
    home new_resource.tomcat_folder
    shell '/bin/false'
    action :create
    end

    # Step 3 Installing tomcat
    download_from = new_resource.tomcat_download_url
    download_to = '/tmp/tomcat9.tar.gz'
    tomcat_location = new_resource.tomcat_folder

    directory tomcat_location do
        owner username
        group group_name
    action :create
    end

    remote_file download_to do
        source download_from
        action :create
        notifies :run, 'execute[untartomcat]'
    end
    # un tar the file can be done with archive_file resource. In this
    # case lets use execute resource

    execute 'untartomcat' do
        command "tar xzvf #{download_to} -C #{tomcat_location} --strip-components=1"
        action :nothing
    end

    # Step 4 — Update Permissions
    permission_directories = [ tomcat_folder, "#{tomcat_folder}/conf", "#{tomcat_folder}/webapps", "#{tomcat_folder}/temp", "#{tomcat_folder}/work", "#{tomcat_folder}/logs" ]

    permission_directories.each do |permission_directory|
        execute 'change group permissions' do
            command "sudo chown -R #{username} #{permission_directory}"
            action :nothing
            subscribes :run, 'execute[untartomcat]', :immediately
        end
    end

    # /usr/lib/jvm/java-1.11.0-openjdk-amd64

    service_file_location = '/etc/systemd/system/tomcat.service'

    javahome_value = "/usr/lib/jvm/java-11-openjdk-11.0.8.10-0.el7_8.x86_64"
    if platform?('ubuntu')
        javahome_value = '/usr/lib/jvm/java-1.11.0-openjdk-amd64'
    end

    template service_file_location do
        source 'tomcat.service.erb'
        variables (
            java_home: javahome_value
        )
        mode '0755'
        action :create
        notifies :run, 'execute[reloaddaemon]'
    end


    execute 'reloaddaemon' do
        command 'sudo systemctl daemon-reload'
        action :nothing
        notifies :start, 'service[tomcat]'
    end

    service 'tomcat' do
        action :enable
    end



end

action :restart do
    service 'tomcat' do
        action :enable
    end

end

