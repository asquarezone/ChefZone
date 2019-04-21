#
# Cookbook:: my_lamp
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# call the needed recipes

# failing recipe execution on unsupported platforms

# if platform of the node is unsupported by my cookbook. i will fail the cookbook

# fail the execution

if node['platform'] == 'ubuntu' or node['platform'] == 'redhat' 
    include_recipe 'my_lamp::apache'
    include_recipe 'my_lamp::php'
    include_recipe 'my_lamp::copyapp'
else 
    # fail the resource
end