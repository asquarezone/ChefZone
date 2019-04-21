#
# Cookbook:: .
# Recipe:: copyapp
#
# Copyright:: 2019, The Authors, All Rights Reserved.


file node['my_lamp']['php_app_path'] do
    content node['my_lamp']['web_content']
    action :create
end

service 'restart webserver again' do
    service_name node['my_lamp']['apache_package_name']
    action :restart
end
