#
# Cookbook:: supermarketdemo
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#include_recipe 'supermarketdemo::mysqlconfig'
include_recipe 'supermarketdemo::configuretomcat'
#include_recipe "sc-mongodb::default"

nginx_install 'nginx' do
    source 'distro'
end