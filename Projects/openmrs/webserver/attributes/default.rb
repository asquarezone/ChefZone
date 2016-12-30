
case node['platform']
when 'ubuntu', 'debian'
  default['installation']['applicationserver'] = 'tomcat7'
  default['installation']['additionalpackages'] = ['tomcat7-docs', 'tomcat7-admin', 'tomcat7-examples']
  default['applicationserver']['JAVA_OPTS_FILE'] = '/etc/default/tomcat7'
  default['applicationserver']['JAVA_OPTS_FILE_TEMPLATE'] = 'tomcat7.erb'
  default['applicationserver']['usersfile'] = '/etc/tomcat7/tomcat-users.xml'
  default['applicationserver']['warlocation'] = '/var/lib/tomcat7/webapps/openmrs.war'
when 'rhel', 'centos'
  default['installation']['applicationserver'] = 'tomcat'
  default['installation']['additionalpackages'] = ['tomcat-webapps', 'tomcat-admin-webapps', 'tomcat-docs-webapp','tomcat-javadoc']
  default['applicationserver']['JAVA_OPTS_FILE'] = ' /usr/share/tomcat/conf/tomcat.conf'
  default['applicationserver']['JAVA_OPTS_FILE_TEMPLATE'] = 'tomcat.conf.erb'
  default['applicationserver']['usersfile'] = '/usr/share/tomcat/conf/tomcat-users.xml'
  default['applicationserver']['warlocation'] = '/usr/share/tomcat/webapps//openmrs.war'
end

default['applicationserver']['SET_JAVA_OPTS_FILE'] = false
default['applicationserver']['username'] = 'admin'
default['applicationserver']['password'] = 'password'
default['applicationserver']['roles'] = 'manager-gui,admin-gui'

default['applicationserver']['war_url'] = 'http://downloads.sourceforge.net/project/openmrs/releases/OpenMRS_Platform_2.0.1/openmrs.war'

default['yum-updatesd']['do_update'] = true
default['yum-updatesd']['do_download'] = true

# java attributes
default['java']['jdk_version'] = '7'
default['java']['install_flavor'] = 'oracle'
default['java']['oracle']['accept_oracle_download_terms'] = true
default['java']['set_etc_environment'] = true


