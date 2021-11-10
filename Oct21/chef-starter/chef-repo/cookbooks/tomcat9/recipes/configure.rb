#
# Cookbook:: tomcat9
# Recipe:: configure
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# sudo useradd -m -U -d /opt/tomcat -s /bin/false tomcat
user node['tomcat9']['username'] do
  comment 'comment'
  gid node['tomcat9']['groupname']
  home node['tomcat9']['userhome']
  shell node['tomcat9']['usershell']
  action :create
end
