#
# Cookbook Name:: orangehrm
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

include_recipe 'orangehrm::mysql_install'
include_recipe 'orangehrm::lamp_server'
include_recipe 'orangehrm::deploy_application'
