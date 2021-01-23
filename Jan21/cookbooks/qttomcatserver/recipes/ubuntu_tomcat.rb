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



