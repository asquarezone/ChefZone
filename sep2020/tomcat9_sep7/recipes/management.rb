#
# Cookbook:: .
# Recipe:: management
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Step 7: Configure Management interface

tomcat_users_location = node['tomcat9']['tomcat-users-location']

template 'tomcat_users_location' do
  source 'tomcat-users.xml.erb'
  action :create
  notifies :restart, 'service[tomcat]'
end


manager_context = node['tomcat9']['manager-context']
hostmanager_context = node['tomcat9']['hostmanager-context']
# wait till the manager context and host manager context xmls 
# are created
until File.exist?(manager_context) && File.exist?(hostmanager_context) do
  # sleep for 30 seconds & then check again
  chef_sleep '30'
end

cookbook_file manager_context do
  source 'context.xml'
  action :create
  notifies :restart, 'service[tomcat]'
end

cookbook_file hostmanager_context do
  source 'context.xml'
  action :create
  notifies :restart, 'service[tomcat]'
end

