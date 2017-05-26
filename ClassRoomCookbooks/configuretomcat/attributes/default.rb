if node['platform'] == 'ubuntu'
  default['configuretomcat']['package_name'] = 'tomcat7'
else
  default['configuretomcat']['package_name'] = 'tomcat'
end