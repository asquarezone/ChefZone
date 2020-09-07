if platform?('ubuntu')
  default['tomcat9']['java'] = 'openjdk-11-jdk'
  default['tomcat9']['JAVA_HOME']= '/usr/lib/jvm/java-1.11.0-openjdk-amd64'
 
elsif platform?('centos')
  default['tomcat9']['java']= 'java-11-openjdk-devel'
  default['tomcat9']['JAVA_HOME']= '/usr/lib/jvm/java-11-openjdk-11.0.8.10-0.el7_8.x86_64'
end

default['tomcat9']['service_file_location'] = '/etc/systemd/system/tomcat.service'
default['tomcat9']['group'] = 'tomcat'
default['tomcat9']['user'] = 'tomcat'
default['tomcat9']['downloadurl'] = 'http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.37/bin/apache-tomcat-9.0.37.tar.gz'
default['tomcat9']['downloadlocation'] = '/tmp/tomcat9.tar.gz'
default['tomcat9']['tomcat_location'] = '/opt/tomcat'
default['tomcat9']['permission_directories'] = ['/opt/tomcat', '/opt/tomcat/conf', '/opt/tomcat/webapps/', '/opt/tomcat/work', '/opt/tomcat/temp/', '/opt/tomcat/logs/']
default['tomcat9']['tomcat-users-location'] = '/opt/tomcat/conf/tomcat-users.xml'
default['tomcat9']['manager-context'] = '/opt/tomcat/webapps/manager/META-INF/context.xml'
default['tomcat9']['hostmanager-context'] = '/opt/tomcat/webapps/host-manager/META-INF/context.xml'

default['tomcat9']['sampleappurl'] = 'https://referenceappkhaja.s3-us-west-2.amazonaws.com/gameoflife.war'
default['tomcat9']['sampleapplocation'] = '/opt/tomcat/webapps/gameoflife.war'
default['tomcat9']['adminuser'] = 'admin'
default['tomcat9']['adminpassword'] = 'password'
default['tomcat9']['adminroles'] = 'manager-gui,admin-gui'
