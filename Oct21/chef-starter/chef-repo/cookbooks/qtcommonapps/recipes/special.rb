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


