#
# Cookbook Name:: webserver
# Recipe:: all_linux_nodes
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# add recipe to configure the apt-update or yum update

apt-update if node["platform"] == "ubuntu" do
    action  :update
end

yum-update if node["platform"] == "centos" do
    action  :update
end
