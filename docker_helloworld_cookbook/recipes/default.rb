#
# Cookbook Name:: docker_helloworld_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

docker_installation_script 'default' do
  action :create
end


docker_image 'tomcat' do
  tag 'latest'
  action :pull
  notifies :redeploy, 'docker_container[my_tomcat]'
end

# Run container exposing ports
docker_container 'my_tomcat' do
  repo 'tomcat'
  tag 'latest'
  port '8080:8080'
end
