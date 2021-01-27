#
# Cookbook:: .
# Recipe:: ubuntu_tomcat
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# sudo apt-get update
apt_update 'update ubuntu packages' do
    ignore_failure true
    action :update
end

java_package = node['qttomcatserver']['java_package']
package java_package do
    action :install
end

# variables from attributes
groupname = node['qttomcatserver']['groupname']
user_name = node['qttomcatserver']['username']
home_folder = node['qttomcatserver']['homedir']
shell = node['qttomcatserver']['shell']

# Create a user
user user_name do
    home home_folder
    shell shell
    action :create
end

# create group and add the user
group groupname do
    members user_name
    action :create
end

# variables for tomcat download location and url and home directory
tomcat_download_url = node['qttomcatserver']['tomcat_download_url']
tomcat_download_location = node['qttomcatserver']['tomcat_download_location']

tomcat_location = node['qttomcatserver']['tomcat_location']

# Create tomcat home directory
directory tomcat_location do
    owner user_name
    group groupname
    mode '775'
    action :create
end

# download the tomcat tar file
remote_file tomcat_download_location do
    source tomcat_download_url
    action :create
    notifies :run, 'execute[untartomcat]', :immediate
end

# untar the tomcat tar to /opt/tomcat
# lets execute manual linux commands 
# note manual linux commands are not idemponent
execute 'untartomcat' do
    command "sudo tar xzvf #{tomcat_download_location} -C #{tomcat_location} --strip-components=1"
    action :nothing
end

execute 'give tomcat ownership' do
    command 'sudo chgrp -R tomcat /opt/tomcat'
    action :nothing
    subscribes :run, 'execute[untartomcat]', :immediate
end

execute 'give permission to conf' do
    command 'sudo chmod -R g+r /opt/tomcat/conf && sudo chmod g+x /opt/tomcat/conf'
    action :nothing
    subscribes :run, 'execute[untartomcat]', :immediate
end

execute 'recursive give ownership' do
    command 'sudo chown -R tomcat /opt/tomcat/webapps/ /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs/'
    action :nothing
    subscribes :run, 'execute[untartomcat]', :immediate
end

template '/etc/systemd/system/tomcat.service' do
    source 'tomcat.service.erb'
    owner user_name
    group groupname
    mode '0755'
    action :create
    notifies :restart, 'service[tomcat]', :immediate
end

service 'tomcat' do
    action :enable
end








