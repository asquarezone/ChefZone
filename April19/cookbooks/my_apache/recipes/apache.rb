#
# Cookbook:: .
# Recipe:: apache
#
# Copyright:: 2019, The Authors, All Rights Reserved.
# my manual steps
# apt-get update
# apt-get install apache2 -y
# service restart apache2
# redhat family
# yum install httpd -y
# service httpd start

# when platform is redhat the package is httpd 
# when platform is ubuntu the package is apache2
# i need a variable & conditional statement

pacakage_name = ''

if node['platform_family'] == 'rhel'
    pacakage_name = 'httpd'
else
    pacakage_name = 'apache2'
end

if node['platform_family'] == 'debian'
  apt_update 'update packages' do
      action :update
   end
end



package pacakage_name do
    action :install
end

service pacakage_name do
    action :restart
end



