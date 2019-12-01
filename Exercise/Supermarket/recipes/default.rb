#
# Cookbook:: supermarketdemo
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
postgresql_server_install 'Setup my PostgreSQL 9.6 server' do
    password 'MyP4ssw0rd'
    port 5433
    action :create
  end

include_recipe 'java::default'

