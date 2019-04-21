
if node['platform_family'] == 'debian'
  default['my_lamp']['apache_package_name'] = 'apache2'
elsif node['platform_family'] == 'rhel'
  default['my_lamp']['apache_package_name'] = 'httpd'    
end

default['my_lamp']['php_packages'] = 'php'

default['my_lamp']['php_app_path'] = '/var/www/html/info.php'

default['my_lamp']['web_content'] = '<?php phpinfo(); ?>'

force_default['mylamp']['package']= 'testing'


