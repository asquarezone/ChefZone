#
# Cookbook:: mytomcat
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


include_recipe 'mytomcat::install'

include_recipe 'mytomcat::configure'

include_recipe 'mytomcat::copywar'

#include_recipe 'mytomcat::additional'

#template '/home/vagrant/mytext' do
#  source 'mytext.erb'
#  action :create
#end
