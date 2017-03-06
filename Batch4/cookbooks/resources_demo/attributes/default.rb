if node['platform_family']=='rhel'
  default['webserver']['package'] = 'httpd'
elsif node['platform_family'] == 'debian'
  default['webserver']['package'] = 'apache2'
end

