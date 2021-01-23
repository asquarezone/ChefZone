if node['platform'] == 'ubuntu'
    # defining attribute values for ubuntu
    default['qtlampserver']['packagename'] = 'apache2'
    default['qtlampserver']['phppackages'] =  %w(php libapache2-mod-php php-mysql php-cli)
elsif node['platform'] == 'centos'
    # defining attribute values for centos
    default['qtlampserver']['packagename'] = 'httpd'
    default['qtlampserver']['phppackages'] = %w(php php-mysql php-fpm)
end