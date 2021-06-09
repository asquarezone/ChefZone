#
# Cookbook:: qt_nopcommerce
# Recipe:: dotnet
#
# Copyright:: 2021, The Authors, All Rights Reserved.

microsoft_key_url = node['qt_nopcommerce']['microsoft_key']['url']
microsoft_key_dest = node['qt_nopcommerce']['microsoft_key']['download_location']

remote_file microsoft_key_dest do
    source microsoft_key_url
    action :create
    notifies :run, 'execute[registerkey]', :immediate
end

execute 'registerkey' do
    command "sudo dpkg -i #{microsoft_key_dest}"
    action :nothing
end

apt_update 'update ubuntu packages' do
    ignore_failure true
    action :update
end

dotnet_packages = node['qt_nopcommerce']['dotnet_packages']

package 'dotnet packages' do
    package_name dotnet_packages
    action :install
end



