#
# Cookbook:: .
# Recipe:: special
#
# Copyright:: 2021, The Authors, All Rights Reserved.

log 'install python' do
    level :info
end


log 'install java' do
    level :info
end

log node['qtcommonapps']['message'] do
    level :info
end

chef_client_cron 'Run Chef Infra Client as a cron job' do
    minute '*/10'
    hour '*'
    action :add
end



