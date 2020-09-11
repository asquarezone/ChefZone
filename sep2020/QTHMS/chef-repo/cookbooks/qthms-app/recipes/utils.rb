#
# Cookbook:: .
# Recipe:: utils
#
# Copyright:: 2020, The Authors, All Rights Reserved.
utils_packages = node['qthms-app']['util-packages']
package utils_packages do
    action :install
end
