#
# Cookbook:: .
# Recipe:: prep
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update 'update' do
  ignore_failure true
  action :update
  only_if node['platform'] == 'ubuntu'
end