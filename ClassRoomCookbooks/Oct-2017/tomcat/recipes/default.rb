#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'tomcat' do
  action :install
end

service 'tomcat' do
  action :start
end

package 'wget' do
 # package_name 'wget'
  action :install
end


