#
# Cookbook:: tomcat9
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.


if platform?('ubuntu') || platform?('centos')
    include_recipe 'tomcat9::java'
    include_recipe 'tomcat9::tomcat'
    include_recipe 'tomcat9::service'
    include_recipe 'tomcat9::management'
    include_recipe 'tomcat9::deploy'
else
   Chef::Application.fatal!('This cookbook supports redhat and ubuntu platforms')
end


