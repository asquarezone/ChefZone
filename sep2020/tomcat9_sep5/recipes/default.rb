#
# Cookbook:: tomcat9
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe 'tomcat9::java'
include_recipe 'tomcat9::tomcat'
include_recipe 'tomcat9::service'
include_recipe 'tomcat9::management'
include_recipe 'tomcat9::deploy'
