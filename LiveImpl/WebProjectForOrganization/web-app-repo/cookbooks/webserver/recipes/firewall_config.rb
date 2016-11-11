#
# Cookbook Name:: .
# Recipe:: firewall_config
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'firewall::default'

ports = node['firewall']['open_ports']

ports.each do |port|
  firewall_rule 'open ports #{port}' do
    port port
  end
end

firewall 'default' do
  action :install
end