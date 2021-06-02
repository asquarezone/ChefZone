#
# Cookbook:: lampserver
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
# recipe => lampserver::default => lampserver

if node['platform'] == 'ubuntu'
    include_recipe 'lampserver::lamp'
elsif node['platform'] == 'redhat'
    include_recipe 'lampserver::lamp_redhat'
else
    raise 'This cookbook is supporting only ubuntu and redhat distributions'
end
