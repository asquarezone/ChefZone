#
# Cookbook:: .
# Recipe:: copywar
#
# Copyright:: 2017, The Authors, All Rights Reserved.

remote_file '/var/lib/tomcat7/webapps/jenkins.war' do
  source 'http://archives.jenkins-ci.org/war-stable/1.642.4/jenkins.war'
  action :create
  notifies :restart, 'service[tomcat7]'
end
