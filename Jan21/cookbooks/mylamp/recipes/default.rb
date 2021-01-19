#
# Cookbook:: mylamp
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
file '/tmp/test.txt' do
    content 'this is to test'
    action :create
end
