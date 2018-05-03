#
# Cookbook:: .
# Recipe:: appserver
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# install node js
include_recipe "nodejs"

include_recipe "nodejs::npm"

npm_package 'pm2'

codelocation = node['appserver']['codelocation']

template codelocation do
  source 'app.js.erb'
  mode '0755'
  action :create
end

execute 'start node js' do
  command "pm2 start #{codelocation}"
  action :run
end



