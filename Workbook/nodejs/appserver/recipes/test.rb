#
# Cookbook:: .
# Recipe:: test
#
# Copyright:: 2018, The Authors, All Rights Reserved.
directory '/home/ubuntu/.nvm' do
    mode '0755'
    user 'ubuntu'
    action :create
  end

template '/home/ubuntu/nodejs.sh' do
  source 'nodejs.sh.erb'
  owner 'ubuntu'
  mode '0755'
  action :create
end

execute 'name' do
  command 'sudo sh /home/ubuntu/nodejs.sh'
  user "ubuntu"
  action :run
end
