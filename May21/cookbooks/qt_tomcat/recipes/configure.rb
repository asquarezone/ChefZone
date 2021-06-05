#
# Cookbook:: qt_tomcat
# Recipe:: configure
# This recipe will configure the tomcat user and group configuration
# Copyright:: 2021, The Authors, All Rights Reserved.

group_name = node['qt_tomcat']['groupname']

# Creating a group
group group_name do
    action :create
end

# Create an user
user_name = node['qt_tomcat']['username']
home_dir = node['qt_tomcat']['homedir']
default_shell = node['qt_tomcat']['default_shell']


user user_name do
    gid group_name
    home home_dir
    shell default_shell
    action :create
end

# download tomcat
tomcat_download_url = node['qt_tomcat']['tomcat_download_url']
tomcat_download_temp_location = node['qt_tomcat']['tomcat_download_temp_location']

remote_file tomcat_download_temp_location do
    source tomcat_download_url
    action :create
end

directory home_dir do
    action :create
end

execute 'untar the tomcat folder' do
    command "tar xzvf #{tomcat_download_temp_location} -C #{home_dir} --strip-components=1"
    action :run
    only_if { not Dir.exist?"#{home_dir}/conf"}
end



