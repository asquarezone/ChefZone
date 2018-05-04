#
# Cookbook:: nodejs-simple
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'nodejs-simple::prep'
include_recipe 'nodejs-simple::appserver'
include_recipe 'nodejs-simple::webserver'
