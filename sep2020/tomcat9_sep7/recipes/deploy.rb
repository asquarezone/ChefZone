#
# Cookbook:: .
# Recipe:: deploy
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Deploying sample application

sampleapp_url = node['tomcat9']['sampleappurl']
sampleapp_location = node['tomcat9']['sampleapplocation']

remote_file sampleapp_location do
  source sampleapp_url
  action :create
  notifies :restart, 'service[tomcat]'
end
