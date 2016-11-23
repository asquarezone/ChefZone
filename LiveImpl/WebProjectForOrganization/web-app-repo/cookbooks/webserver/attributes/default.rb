default['firewall']['allow_ssh'] = true
default['firewall']['open_ports'] = [80, 443, 8080, 3306]

default['webserver']['user'] = 'web_admin'
default['webserver']['group'] = 'web_admin'
default['webserver']['document_root'] = '/var/www/customers/public_html'


#default['webserver']['db_config']['root_password']= 'root'
default['webserver']['db_config']['secretkey_path'] ='/etc/chef/encrypted_data_bag_secret'