#
# Cookbook:: .
# Recipe:: utils
#
# Copyright:: 2021, The Authors, All Rights Reserved.

utilpackages = node['ltutils']['utilpackages']

utilpackages.each do |utilpackage|
    package utilpackage do
        action :install
    end
    
end

secret = data_bag_item('tomcat', 'tomcatusers', 'learningthoughts')
username = secret['username']
password = secret['password']

log username do
    level :info
end

log password do
    level :info
end

