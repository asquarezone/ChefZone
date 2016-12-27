#
# Cookbook Name::webserver
# Recipe:: deploy_application
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#deploy_application
cookbook_file node['applicationserver']['warlocation'] do
  source 'sm-shop.war'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  notifies :restart, "service[#{tomcat_packageName}]"
end

log 'copied war file and restarted tomcat'