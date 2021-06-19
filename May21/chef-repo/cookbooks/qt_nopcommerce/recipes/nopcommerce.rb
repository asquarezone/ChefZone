#
# Cookbook:: qt_nopcommerce
# Recipe:: nopcommerce
#
# Copyright:: 2021, The Authors, All Rights Reserved.

nop_download_url = node['qt_nopcommerce']['download_url']
nop_download_temp_location = node['qt_nopcommerce']['download_temp_location']
nop_home_dir = node['qt_nopcommerce']['home_dir']

remote_file nop_download_temp_location do
    source nop_download_url
    action :create
end

archive_file 'unzip_nop' do
    path nop_download_temp_location
    destination nop_home_dir
    action :extract
    # create a notification to change group permissions
end

additional_dirs = node['qt_nopcommerce']['additional_dirs']

additional_dirs.each  do |additional_dir| 
    directory additional_dir do
        action :create
    end
    
end


# write a resource to change group permissions

# copy the service template file

# enable and start the nop commerce service

# When service file is copied restart nginx


