#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

log node['platform'] do
  level :info
end


include_recipe 'nginx::removeapache'

include_recipe 'nginx::nginx'

