#
# Cookbook:: .
# Recipe:: tomcat
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['platform'] == 'ubuntu'
    apt_update
else
    execute 'yum update' do
      command 'yum -y update'
      action :run
    end
end

package_name = node['configuretomcat']['package_name']

package package_name do
  action :install
end

service package_name do
  action :start
end
