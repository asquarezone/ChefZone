#
# Cookbook:: .
# Recipe:: pginstall
#
# Copyright:: 2020, The Authors, All Rights Reserved.

if platform?('ubuntu')
    apt_update 'update packages' do
        ignore_failure true
        action :update
    end
    
end

postgresql_server_install 'My PostgreSQL Server install' do
    version  node['qthms-db']['pgversion']
    password node['qthms-db']['pgpassword']
    action :install
end

  postgresql_access 'local_postgres_superuser' do
    comment 'Local postgres superuser access'
    access_type 'local'
    access_db 'all'
    access_user 'postgres'
    access_addr nil
    access_method 'ident'
end
  
