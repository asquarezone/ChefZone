if platform?('ubuntu')
  default['tomcat9']['java_package'] = 'openjdk-11-jdk'
  default['tomcat9']['java_home'] = '/usr/lib/jvm/java-11-openjdk-amd64'
  default['tomcat9']['java_opts'] = '-Djava.security.egd=file:///dev/urandom -Djava.awt.headless=true'
elsif platform?('centos')
  default['tomcat9']['java_package'] = 'java-1.8.0-openjdk-devel'
  default['tomcat9']['java_home'] = '/usr/lib/jvm/jre'
  default['tomcat9']['java_opts'] = '-Djava.security.egd=file:///dev/urandom'
end

default['tomcat9']['username'] = 'tomcat'
default['tomcat9']['groupname'] = 'tomcat'
default['tomcat9']['userhome'] = '/opt/tomcat'
default['tomcat9']['usershell'] = '/bin/false'
default['tomcat9']['version'] = '9.0.54'
default['tomcat9']['download_url'] = "https://archive.apache.org/dist/tomcat/tomcat-9/v#{node['tomcat9']['version']}/bin/apache-tomcat-#{node['tomcat9']['version']}.tar.gz"
default['tomcat9']['local_download_path'] = "/tmp/apache-tomcat-#{node['tomcat9']['version']}.tar.gz"
default['tomcat9']['extracted_tomcat'] = "#{node['tomcat9']['userhome']}/apache-tomcat-#{node['tomcat9']['version']}"
default['tomcat9']['tomcatdir'] = "#{node['tomcat9']['userhome']}/latest"
default['tomcat9']['tomcatservicelocation'] = '/etc/systemd/system/tomcat.service'

default['tomcat9']['admin_username'] = 'admin'
default['tomcat9']['admin_password'] = 'admin@123'
default['tomcat9']['users_xml_location'] = "#{node['tomcat9']['userhome']}/latest/conf/tomcat-users.xml"

default['tomcat9']['context-allow'] = '.*'
default['tomcat9']['manager_context_location'] = "#{node['tomcat9']['userhome']}/latest/webapps/manager/META-INF/context.xml"
default['tomcat9']['hostmanager_context_location'] = "#{node['tomcat9']['userhome']}/latest/webapps/host-manager/META-INF/context.xml"
