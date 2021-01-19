#
# Cookbook:: kitchendemo
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file '/tmp/test.txt' do
    content 'content'
    action :create
end
