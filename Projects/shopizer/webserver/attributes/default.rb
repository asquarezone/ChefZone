case node['platform']
when 'ubuntu', 'debian'
  default['installation']['applicationserver'] = 'tomcat7'
  default['installation']['additionalpackages'] = ['tomcat7-docs', 'tomcat7-admin', 'tomcat7-examples']
  default['applicationserver']['JAVA_OPTS_FILE'] = '/etc/default/tomcat7'
  default['applicationserver']['JAVA_OPTS_FILE_TEMPLATE'] = 'tomcat7.erb'

when 'rhel', 'centos'
  default['installation']['applicationserver'] = 'tomcat'
  default['installation']['additionalpackages'] = ['tomcat-webapps', 'tomcat-admin-webapps', 'tomcat-docs-webapp','tomcat-javadoc']
  default['applicationserver']['JAVA_OPTS_FILE'] = ' /usr/share/tomcat/conf/tomcat.conf'
  default['applicationserver']['JAVA_OPTS_FILE_TEMPLATE'] = 'tomcat.conf.erb'
end

default['applicationserver']['username'] = 'admin'
default['applicationserver']['password'] = 'password'
default['applicationserver']['roles'] = 'manager-gui,admin-gui'

default['applicationserver']['usersfile'] = '/etc/tomcat7/tomcat-users.xml'

default['applicationserver']['warlocation'] = '/var/lib/tomcat7/webapps/sm-shop.war'


