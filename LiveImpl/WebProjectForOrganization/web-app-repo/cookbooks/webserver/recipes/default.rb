#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

case node['platform_family'] 
 when 'rhel'
  include_recipe 'selinux::permissive'
 when 'debian'
  include_recipe 'apt::default'
end

#include_recipe 'webserver::firewall_config'
#include_recipe 'webserver::webuser'
#include_recipe 'webserver::webserver_config'
#include_recipe 'webserver::db_config'

