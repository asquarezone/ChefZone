#
# Cookbook:: .
# Recipe:: tomcat_install
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update 'update' do
    ignore_failure true
    action :update
  end
  
  package 'tomcat7' do
    action :install
    notifies :enable, 'service[tomcat7]'
  end

  ## edit file /etc/default/tomcat7 & make some changes

  cookbook_file '/etc/default/tomcat7' do
      source 'tomcat7'
      action :create
      notifies :restart, 'service[tomcat7]'
  end
  

  service 'tomcat7' do
      action :nothing
  end
  
  $packages= ['tomcat7-docs', 'tomcat7-admin', 'tomcat7-examples']

  package 'additional packages' do
      package_name $packages
      action :install
      notifies :restart, 'service[tomcat7]'
  end
  
## make changes to xml file /etc/tomcat7/tomcat-users.xml

template '/etc/tomcat7/tomcat-users.xml' do
    source 'tomcat-users.xml.erb'
    action :create
end




