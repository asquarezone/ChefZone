#
# Cookbook:: openmrs
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#if node['platform'] == 'redhat' ||  node['platform'] == 'ubuntu' then
#    log 'valid environment' 
#else
#   fail
#end

include_recipe 'openmrs::common'
include_recipe 'openmrs::tomcat'
include_recipe 'openmrs::mysqlinstall'