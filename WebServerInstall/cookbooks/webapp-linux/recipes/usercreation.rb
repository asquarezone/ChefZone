#
# Cookbook Name:: webapp-linux
# Recipe:: usercreation
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

group node['webapp-linux']['group']

user node['webapp-linux']['user'] do
  group node['webapp-linux']['group']
  system true
  shell '/bin/bash'
end
