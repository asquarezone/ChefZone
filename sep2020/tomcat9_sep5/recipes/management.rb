#
# Cookbook:: .
# Recipe:: management
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Step 7: Configure Management interface

tomcat_users_location = node['tomcat9']['tomcat-users-location']

cookbook_file tomcat_users_location do
    source 'tomcat-users.xml'
    action :create
    notifies :restart, 'service[tomcat]'
end

manager_context = node['tomcat9']['manager-context']
hostmanager_context = node['tomcat9']['hostmanager-context']

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


