#
# Cookbook Name:: .
# Recipe:: webuser
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

group node['webserver']['group']

user node['webserver']['user'] do
  group node['webserver']['group']
  shell '/bin/bash'
  action :create
  system true
end
