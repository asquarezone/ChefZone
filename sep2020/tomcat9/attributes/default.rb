
if platform?('ubuntu')
    default['tomcat_flavor2']['java_package'] = 'openjdk-11-jdk'
    default['tomcat_flavor2']['tomcat_package'] = 'tomcat9'
    default['tomcat_flavor2']['tomcat_additional_packages'] = %w(tomcat9-admin tomcat9-docs tomcat9-user tomcat9-examples tomcat9-common)    
    default['tomcat_flavor2']['users_xml_location'] = "/etc/tomcat9/tomcat-users.xml"
    default['tomcat_flavor2']['warlocation'] = '/var/lib/tomcat9/webapps/gameoflife.war'
end

default['tomcat_flavor2']['war'] = 'https://referenceappkhaja.s3-us-west-2.amazonaws.com/gameoflife.war'

