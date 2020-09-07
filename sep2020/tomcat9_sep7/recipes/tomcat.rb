#
# Cookbook:: .
# Recipe:: tomcat
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Step 2 according to documentation
group_name = node['tomcat9']['group']

group group_name do
  action :create
end

username = node['tomcat9']['user']

user username do
  comment 'This is tomcat user'
  gid group_name
  home '/opt/tomcat'
  shell '/bin/false'
  action :create
end

# Step 3 Installing tomcat
download_from = node['tomcat9']['downloadurl']
download_to = node['tomcat9']['downloadlocation']
tomcat_location = node['tomcat9']['tomcat_location']

directory '/opt/tomcat' do
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
permission_directories = node['tomcat9']['permission_directories']

permission_directories.each do |permission_directory|
  execute 'change group permissions' do
    command "sudo chown -R #{username} #{permission_directory}"
    action :nothing
    subscribes :run, 'execute[untartomcat]', :immediately
  end
end
