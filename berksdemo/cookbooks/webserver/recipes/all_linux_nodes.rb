#
# Cookbook Name:: webserver
# Recipe:: all_linux_nodes
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# add recipe to configure the apt-update or yum update

case node[:platform]

  when 'debian', 'ubuntu'
    apt-update 'debianplatform' do
        action  :update
  end

  when 'centos','redhat',
    yum-update 'rhelplatform' do
        action  :update
  end
end
