#
# Cookbook Name:: webserver
# Recipe:: all_linux_nodes
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# add recipe to configure the apt-update or yum update

apt_update 'debianplaform' do
  frequency 3600
  action :periodic
  only_if {node["platform"] == "ubuntu"}
end
