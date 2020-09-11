# See http://docs.chef.io/config_rb.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "qtkhaja"
client_key               "#{current_dir}/qtkhaja.pem"
chef_server_url          "https://api.chef.io/organizations/qthms"
cookbook_path            ["#{current_dir}/../cookbooks"]
