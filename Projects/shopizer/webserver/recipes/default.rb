#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'java'

include_recipe 'webserver::installation'
include_recipe 'webserver::deploy_application'

#selinux_state 'SELinux Permissive ' do
#  action :permissive
#  only_if { node['platform_family'] == 'rhel' }
#end
