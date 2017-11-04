#
# Cookbook:: .
# Recipe:: tomcat
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'java'

package node['openmrs']['tomcat']['package'] do
  action :install
end


