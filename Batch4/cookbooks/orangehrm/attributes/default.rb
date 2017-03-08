if node['platform_family'] == 'debian'
  default['orangehrm']['webserver']['package'] = 'apache2'
elsif node['platform_family'] == 'rhel'
  default['orangehrm']['webserver']['package'] = 'httpd'
end

default['orangehrm']['webserver']['php_packages'] = ['php5', 'libapache2-mod-php5', 'php5-mcrypt', 'libapache2-mod-auth-mysql', 'php5-mysql' ]