#
# Cookbook Name:: webserver
# Recipe:: deploy_application
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#tune tomcat
tomcat_packageName = node['installation']['applicationserver']

template node['applicationserver']['JAVA_OPTS_FILE'] do
  source node['applicationserver']['JAVA_OPTS_FILE_TEMPLATE']
  owner 'root'
  mode '0755'
  action :create
  notifies :restart, "service[#{tomcat_packageName}]"
end

log "created template @ #{node['applicationserver']['JAVA_OPTS_FILE']}"



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