if platform?('ubuntu')
  default['tomcat9']['java_package'] = 'openjdk-11-jdk'
end