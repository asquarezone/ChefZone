#
# Cookbook:: windowsdemo
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

windows_feature 'Web-Server' do
  management_tools true
  install_method :windows_feature_powershell
  action :install
end
