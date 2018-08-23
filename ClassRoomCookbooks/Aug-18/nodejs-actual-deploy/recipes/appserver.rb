#
# Cookbook:: .
# Recipe:: appserver
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe "nodejs"

include_recipe 'pm2::default'

template '/home/ubuntu/hello.js' do
  source 'hello.js.erb'
  action :create
end

pm2_application 'hello' do
    script 'hello.js'
    cwd '/home/ubuntu'
    action [:deploy, :start_or_restart]
  end
