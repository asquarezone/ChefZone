#
# Cookbook Name:: webapp-linux
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "apt::default"
include_recipe "webapp-linux::usercreation"
include_recipe "firewall::default"
include_recipe "webapp-linux::webserver"
include_recipe "mysql::default"
include_recipe "mysql_chef_gem::default"
include_recipe "database::default"
include_recipe "webapp-linux::database"
