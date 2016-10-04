#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "apt-get-update" do
	command "apt-get update"
	ignore_failure true
	action :nothing
end

package "apache2" do
	action :install
end

service "apache2" do
	action :start
end

