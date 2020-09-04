#
# Cookbook:: .
# Recipe:: deploy
#
# Copyright:: 2020, The Authors, All Rights Reserved.

war_file_url = node['tomcat_flavor2']['war']

war_file_location = node['tomcat_flavor2']['warlocation']

tomcat_package = node['tomcat_flavor2']['tomcat_package']

remote_file war_file_location do
    source war_file_url
    action :create
    notifies :restart, "service[#{tomcat_package}]"
end
