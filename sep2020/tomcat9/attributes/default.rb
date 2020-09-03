
if platform?('ubuntu')
    default['tomcat_flavor2']['java_package'] = 'openjdk-11-jdk'
    default['tomcat_flavor2']['tomcat_package'] = 'tomcat9'
    default['tomcat_flavor2']['tomcat_additional_packages'] = %w(tomcat9-admin tomcat9-docs tomcat9-user tomcat9-examples tomcat9-common)    
    default['tomcat_flavor2']['users_xml_location'] = "/etc/tomcat9/tomcat-users.xml"
end
