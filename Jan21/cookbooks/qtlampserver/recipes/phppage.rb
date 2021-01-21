#
# Cookbook:: .
# Recipe:: phppage
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# Create a info.php page
file '/var/www/html/info.php' do
    content '<?php phpinfo(); ?>'
    action :create
end