#
# Cookbook:: .
# Recipe:: configure-tomcat
#
# Copyright:: 2017, The Authors, All Rights Reserved.

template node['configuretomcat']['tomcatconfigfile'] do
  source node['configuretomcat']['templatename']
  action :create
  notifies :restart, "service[#{ node['configuretomcat']['package_name']}]"
 end

 package node['configuretomcat']['additional_packages'] do
   action :install
   notifies :restart, "service[#{ node['configuretomcat']['package_name']}]"
 end
 
