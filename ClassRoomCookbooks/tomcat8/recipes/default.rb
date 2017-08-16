#
# Cookbook:: tomcat8
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'tomcat8::java'
include_recipe 'tomcat8::userngroupcreation'
include_recipe 'tomcat8::downloadfile'
include_recipe 'tomcat8::extract'
include_recipe 'tomcat8::permissions'
