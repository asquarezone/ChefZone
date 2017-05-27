#
# Cookbook:: .
# Recipe:: deploy_app
#
# Copyright:: 2017, The Authors, All Rights Reserved.

remote_file node['configuretomcat']['appdeploylocation'] do
  source node['configuretomcat']['applocation']
  action :create
  notifies :restart, "service[#{ node['configuretomcat']['package_name']}]"
end
