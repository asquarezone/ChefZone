#
# Cookbook:: .
# Recipe:: ubuntu
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# installing java
java_package = node['tomcat_flavor2']['java_package']

apt_update 'update packages' do
    ignore_failure true
    action :update
end

# installing tomcat
tomcat_package = node['tomcat_flavor2']['tomcat_package']

package tomcat_package do
    action :install
    notifies :enable, "service[#{tomcat_package}]"
end

service tomcat_package do
    action :nothing
end

tomcat_additional_packages = node['tomcat_flavor2']['tomcat_additional_packages']

package tomcat_additional_packages do
    action :install
    notifies :restart, "service[#{tomcat_package}]"
end

tomcat_users_xml_location = node['tomcat_flavor2']['users_xml_location']
cookbook_file tomcat_users_xml_location do
    source 'tomcat-users.xml'
    action :create
    notifies :restart, "service[#{tomcat_package}]"
end



