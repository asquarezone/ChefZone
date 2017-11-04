#
# Cookbook:: .
# Recipe:: nginx
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# installation is carried out from http://www.ehowstuff.com/how-to-install-nginx-on-centos-7-rhel-7/
if node['platform'] == 'redhat' then
  file '/etc/yum.repos.d/nginx.repo' do
    content '[nginx]
  name=nginx repo
  baseurl=http://nginx.org/packages/rhel/7/$basearch/
  gpgcheck=0
  enabled=1'
    action :create
  end
end

# These are not idempotent. 
# we are responsible for idempotency
#execute 'prepare yum ' do
#  command 'rpm -Uvh http://nginx.org/packages/rhel/7/noarch/RPMS/nginx-release-rhel-7-0.el7.ngx.noarch.rpm'
#  action :run
# end

execute 'update' do
  command node['nginx']['updatecommand']
  action :run
end

package_name = node['nginx']['package_name']

package package_name do
  action :install
end

service package_name do
  action :start
end


