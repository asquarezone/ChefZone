#
# Cookbook:: lampserver
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
# recipe => lampserver::default => lampserver

if node['platform'] == 'ubuntu'
    include_recipe 'lampserver::lamp'
end
