#
# Cookbook:: .
# Recipe:: extract
#
# Copyright:: 2017, The Authors, All Rights Reserved.

directory '/opt/tomcat' do
  owner 'tomcat'
  group 'tomcat'
  mode '0755'
  action :create
end

# gaurd this resource so that
# idempotance is guarnteed
execute 'untar' do
  command 'tar xvf /home/ubuntu/apache-tomcat-8.0.23.tar.gz -C /opt/tomcat --strip-components=1'
  action :run
  not_if ::File.exist('/opt/tomcat/Running.txt')
end

