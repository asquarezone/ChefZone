

if node['platform'] == 'redhat' then
     ['nginx']['package_name_for_apache'] = 'httpd'
    default['nginx']['updatecommand'] = 'yum update -y'
else
    default['nginx']['package_name_for_apache'] = 'apache2'
    default['nginx']['updatecommand'] = 'apt-get update -y'
end

default['nginx']['package_name'] = 'nginx'