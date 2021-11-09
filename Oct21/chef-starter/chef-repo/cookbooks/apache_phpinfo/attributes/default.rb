# default attributes
default['apache_phpinfo']['apache_package'] = 'apache2'
default['apache_phpinfo']['all_packages'] = %w(apache2 php libapache2-mod-php php-mysql)
default['apache_phpinfo']['info_page_path'] = '/var/www/html/info.php'

if node['platform'] == 'centos'
    default['apache_phpinfo']['apache_package'] = 'httpd'
    default['apache_phpinfo']['all_packages'] = %w(httpd php php-mysql php-fpm)
end
