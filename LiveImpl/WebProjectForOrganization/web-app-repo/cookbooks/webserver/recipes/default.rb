#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

if node['platform_family'] == 'rhel'
  include_recipe 'selinux::permissive'
end

if node['platform_family'] == 'debian'
  include_recipe 'apt::default'
end

include_recipe 'webserver::firewall_config'
include_recipe 'webserver::webuser'
include_recipe 'webserver::webserver_config'
include_recipe 'webserver::db_config'

