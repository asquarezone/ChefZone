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