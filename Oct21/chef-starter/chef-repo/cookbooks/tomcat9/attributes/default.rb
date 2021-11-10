if platform?('ubuntu')
  default['tomcat9']['java_package'] = 'openjdk-11-jdk'
end

default['tomcat9']['username'] = 'tomcat'
default['tomcat9']['groupname'] = 'tomcat'
default['tomcat9']['userhome'] = '/opt/tomcat'
default['tomcat9']['usershell'] = '/bin/false'
