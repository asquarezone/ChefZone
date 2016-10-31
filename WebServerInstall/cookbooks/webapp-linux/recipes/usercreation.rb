#
# Cookbook Name:: webapp-linux
# Recipe:: usercreation
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

node.default['webapp-linux']['user'] ='web_admin'
node.default['webapp-linux']['group'] ='web_admin'




group node['webapp-linux']['group'] do
  action :create
end

user node['webapp-linux']['user'] do
  group node['webapp-linux']['group']
  system true
  shell '/bin/bash'
end
