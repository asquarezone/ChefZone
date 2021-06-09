default['qt_nopcommerce']['microsoft_key']['url'] = 'https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb'
default['qt_nopcommerce']['microsoft_key']['download_location'] = '/tmp/packages-microsoft-prod.deb'

default['qt_nopcommerce']['dotnet_packages'] = %w(apt-transport-https aspnetcore-runtime-3.1)

default['qt_nopcommerce']['nginx']['package_name'] = 'nginx'
default['qt_nopcommerce']['nginx']['sites_available'] = '/etc/nginx/sites-available/default'

default['qt_nopcommerce']['home_dir'] = '/var/www/nopCommerce440'
default['qt_nopcommerce']['download_url'] = 'https://github.com/nopSolutions/nopCommerce/releases/download/release-4.40.3/nopCommerce_4.40.3_NoSource_linux_x64.zip'
default['qt_nopcommerce']['download_temp_location'] = '/tmp/nopCommerce_4.40.3_NoSource_linux_x64.zip'