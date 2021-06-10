#
# Cookbook:: qt_apache
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

apt_update 'update packages' do
    ignore_failure true
    action :update
end

package 'apache2' do
    action :install
end

