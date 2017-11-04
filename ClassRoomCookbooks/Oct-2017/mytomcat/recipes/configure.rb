#
# Cookbook:: .
# Recipe:: configure
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#cookbook_file '/etc/default/tomcat7' do
#  source 'tomcat7'
#  action :create
#  notifies :restart, 'service[tomcat7]'
# end

template '/etc/default/tomcat7' do
  source 'tomcat7.erb'
  action :create
  notifies :restart, 'service[tomcat7]'
end




