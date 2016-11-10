default['webapp-linux']['user'] ='web_admin'
default['webapp-linux']['group'] ='web_admin'

default['webapp-linux']['document_root']='/var/www/customers/public_html'

default['firewall']['allow_ssh'] = true

default['webapp-linux']['password']['secret-path']="/etc/chef/encrypted_data_bag_secret"

default['webapp-linux']['database']['username'] ="root"
default['webapp-linux']['database']['host']='127.0.0.1'
default['webapp-linux']['database']['dbname']='products'
default['webapp-linux']['database']['seed_file']='/tmp/create-tables.sql'
