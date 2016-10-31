#
# Cookbook Name:: webapp-linux
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "apt::default"
include_recipe "webapp-linux::usercreation"
include_recipe "firewall::default"
include_recipe "webapp-linux::webserver"
