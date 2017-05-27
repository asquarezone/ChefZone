if node['platform'] == 'ubuntu'
  default['configuretomcat']['package_name'] = 'tomcat7'
  default['configuretomcat']['additional_packages'] = ['tomcat7-docs','tomcat7-admin','tomcat7-examples']
  default['configuretomcat']['appdeploylocation'] = '/var/lib/tomcat7/webapps/jenkins.war'
  default['configuretomcat']['tomcatconfigfile'] = '/etc/default/tomcat7'
  default['configuretomcat']['templatename'] = 'tomcat7.erb'
else
  default['configuretomcat']['package_name'] = 'tomcat'
  default['configuretomcat']['tomcatconfigfile'] = '/usr/share/tomcat/conf/tomcat.conf'
  default['configuretomcat']['templatename'] = 'tomcat.conf.erb'
  default['configuretomcat']['additional_packages'] = ['tomcat-webapps','tomcat-admin-webapps','tomcat-docs-webapp','tomcat-javadoc']
  default['configuretomcat']['appdeploylocation'] = '/usr/share/tomcat/webapps/jenkins.war'
end

default['configuretomcat']['tomcat_welcome'] = 'This is managed by Chef using Templates'
default['configuretomcat']['maxpermsize'] = '256m'
default['configuretomcat']['maxheapsize'] = '512m'

default['configuretomcat']['applocation'] = "http://ftp.yz.yamagata-u.ac.jp/pub/misc/jenkins/war-stable/2.46.2/jenkins.war" 
