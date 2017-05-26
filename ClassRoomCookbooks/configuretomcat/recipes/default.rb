#
# Cookbook:: configuretomcat
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

unless node['platform_family'] == 'debian' || node['platform_family'] == 'redhat'
  raise 'This is not supported in your current platform'
end

include_recipe 'configuretomcat::tomcat'