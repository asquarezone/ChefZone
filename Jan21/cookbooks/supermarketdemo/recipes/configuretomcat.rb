#
# Cookbook:: .
# Recipe:: configuretomcat
#
# Copyright:: 2021, The Authors, All Rights Reserved.
tomcat_install 'helloworld' do
    version '8.0.36'
end

tomcat_service 'helloworld' do
    action :start
end