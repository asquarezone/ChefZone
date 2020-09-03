#
# Cookbook:: tomcat_flavor2
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

if platform?('ubuntu')
    include_recipe 'tomcat_flavor2::ubuntu'
end
