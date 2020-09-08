#
# Cookbook:: .
# Recipe:: install_nodejs
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe 'build-essential::default'
include_recipe 'nodejs::default'
include_recipe "nodejs::npm"