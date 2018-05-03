#
# Cookbook:: appserver
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# fail cookbook for unsupported platforms
if node['platform'] != 'ubuntu'
    raise "This cookbook doesn't support #{node['platform']}"
end