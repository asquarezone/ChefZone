if platform?('ubuntu')
  default['tomcat9']['java_package'] = 'openjdk-11-jdk'
end

default['tomcat9']['username'] = 'tomcat'
default['tomcat9']['groupname'] = 'tomcat'
default['tomcat9']['userhome'] = '/opt/tomcat'
default['tomcat9']['usershell'] = '/bin/false'
default['tomcat9']['version'] = '9.0.54'
default['tomcat9']['download_url'] = "https://archive.apache.org/dist/tomcat/tomcat-9/v#{node['tomcat9']['version']}/bin/apache-tomcat-#{node['tomcat9']['version']}.tar.gz"
default['tomcat9']['local_download_path'] = "/tmp/apache-tomcat-#{node['tomcat9']['version']}.tar.gz"
