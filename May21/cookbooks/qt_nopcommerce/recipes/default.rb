#
# Cookbook:: qt_nopcommerce
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

if node['platform'] == 'ubuntu'
    include_recipe 'qt_nopcommerce::mysql'
    include_recipe 'qt_nopcommerce::dotnet'
    include_recipe 'qt_nopcommerce::nginx'
    include_recipe 'qt_nopcommerce::nopcommerce'
end