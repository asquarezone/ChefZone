#
# Cookbook:: .
# Recipe:: service
#
# Copyright:: 2020, The Authors, All Rights Reserved.
service_file_location = node['tomcat9']['service_file_location']


template service_file_location do
  source 'tomcat.service.erb'
  mode '0755'
  action :create
  notifies :run, 'execute[reloaddaemon]'
end


execute 'reloaddaemon' do
  command 'sudo systemctl daemon-reload'
  action :nothing
  notifies :start, 'service[tomcat]'
end

service 'tomcat' do
  action :enable
end
