#
# Cookbook:: .
# Recipe:: lamp_ubuntu
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# sudo apt update
apt_update 'update ubuntu packages' do
    action :update
end
