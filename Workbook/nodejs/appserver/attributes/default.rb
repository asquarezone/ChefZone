default['appserver']['user'] = "ec2-user"
default['appserver']['home'] = "/home/#{node['appserver']['user']}"

default['appserver']['nvm']['version'] = 'v0.33.11'
default['appserver']['nvm']['download_url'] = "https://raw.githubusercontent.com/creationix/nvm/#{node['appserver']['nvm']['version']}/install.sh"

default['appserver']['nvm']['home'] = "#{node['appserver']['home']}/.nvm"
default['appserver']['nvm']['scriptlocation'] = "#{node['appserver']['home']}/install.sh"

default['appserver']['nodejs']['version']  = "8"
default['appserver']['nodejs']['path'] = "#{node['appserver']['home']}/.nodejs"





