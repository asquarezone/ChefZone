#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
template '/etc/update-motd.d/98-server-info' do
  source 'server-info.erb'
  owner 'root'
  group 'root'
  mode 00744
end
