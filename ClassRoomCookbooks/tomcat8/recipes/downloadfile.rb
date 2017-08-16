#
# Cookbook:: .
# Recipe:: downloadfile
#
# Copyright:: 2017, The Authors, All Rights Reserved.

remote_file '/home/ubuntu/apache-tomcat-8.0.23.tar.gz' do
  source 'http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.23/bin/apache-tomcat-8.0.23.tar.gz'
  action :create
end
