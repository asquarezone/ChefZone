#
# Cookbook:: supermarketdemo
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'java'

apt_update 'update' do
  action :update
end