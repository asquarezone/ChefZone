#
# Cookbook:: .
# Recipe:: nvm
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# download nvm script file to a location
script_location = node['appserver']['nvm']['scriptlocation']
current_user = node['appserver']['user']
nvm_directory = node['appserver']['nvm']['home']

if not  ::File.exists?("#{nvm_directory}/nvm.sh")

  log 'nvm not installed & starting the installation' do
    level :info
  end

  remote_file script_location do
    source node['appserver']['nvm']['download_url']
    mode '0755'
    action :create_if_missing
    notifies :run, 'execute[installnvm]', :immediately
  end

  log "downloaded the script for nvm installation @ #{script_location}"  do
    level :info
  end


  execute 'installnvm' do
    command "sudo sh #{script_location}"
    action :nothing
    notifies :request_reboot, 'reboot[app_requires_reboot]', :immediately
  end

  reboot 'app_requires_reboot' do
    reason 'Need to reboot when the run completes successfully.'
    delay_mins 1
    action :nothing
    ignore_failure true
    notifies :write, 'log[restart]', :immediately
  end

  log 'restart' do
    message 'Rebooting the machine'
    level :info
  end
else
  log 'nvm is installed' do
    level :info
  end

  include_recipe 'appserver::nodejs'
end