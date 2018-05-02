#
# Cookbook:: .
# Recipe:: nvm
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# download nvm script file to a location
script_location = node['appserver']['nvm']['scriptlocation']

nvm_directory = node['appserver']['nvm']['home']

remote_file script_location do
  source node['appserver']['nvm']['download_url']
  owner current_user
  group current_user
  mode '0755'
  action :create_if_missing
  notifies :run, 'execute[installnvm]', :immediately
  not_if {::File.directory?(nvm_directory)}
end

execute 'installnvm' do
  command "sudo sh #{script_location}"
  action :nothing
  notifies :reboot_now, 'reboot[app_requires_reboot]', :immediately
end

reboot 'app_requires_reboot' do
  reason 'Need to reboot when the run completes successfully.'
  delay_mins 1
  action :nothing
  retries 3
  retry_delay 60
end