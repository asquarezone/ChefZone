#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe('chef-client::default')
include_recipe('webserver::all_linux_nodes')
