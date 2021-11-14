#
# Cookbook:: springbootexample
# Recipe:: java
#
# Copyright:: 2021, The Authors, All Rights Reserved.

apt_update 'update ubuntu packages' do
  ignore_failure true
  action :update
  only_if { platform?('ubuntu') }
end
  
package node['springbootexample']['java_package'] do
  action :install
end