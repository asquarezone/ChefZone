#
# Cookbook:: tomcat9
# Recipe:: java
#
# Copyright:: 2021, The Authors, All Rights Reserved.

apt_update 'update ubuntu packages' do
  ignore_failure true
  action :update
  only_if { platform?('ubuntu') }
end

package node['tomcat9']['java_package'] do
  action :install
end
