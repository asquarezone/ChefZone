#
# Cookbook:: .
# Recipe:: utils
#
# Copyright:: 2020, The Authors, All Rights Reserved.
if platform?('ubuntu')
    apt_update 'update packages' do
        ignore_failure true
        action :update
    end
    
end


utils_packages = node['qthms-app']['util-packages']

package utils_packages do
    action :install
end
