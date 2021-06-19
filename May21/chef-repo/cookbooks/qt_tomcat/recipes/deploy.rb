#
# Cookbook:: qt_tomcat
# Recipe:: deploy
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# download the file from internet into node

war_url = node['qt_tomcat']['warfile_url']
war_dest = node['qt_tomcat']['warfile_destination']

remote_file war_dest do
    source war_url
    action :create
end
