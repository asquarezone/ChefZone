#
# Cookbook:: bettercookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

packages = node['bc']['packages']

#if node['platform'] == 'ubuntu' then
#  apt_update 'update apt repository' do
#    action :update
#  end
#
# end

apt_update 'update apt repository' do
  action :update
  only_if node['platform'] == 'ubuntu'
end



packages.each do |package_name|
  package package_name do
    action :purge
  end
end