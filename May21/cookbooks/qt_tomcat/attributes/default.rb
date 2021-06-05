# attributes for openjdk package
default['qt_tomcat']['java_package'] = 'openjdk-8-jdk'

# attributes for username and groupname
default['qt_tomcat']['username'] = 'tomcat'
default['qt_tomcat']['groupname'] = 'tomcat'
default['qt_tomcat']['homedir'] = '/opt/tomcat'
default['qt_tomcat']['default_shell'] = '/bin/false'

# attributes for tomcat download
default['qt_tomcat']['tomcat_download_url'] = 'https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.46/bin/apache-tomcat-9.0.46.tar.gz'
default['qt_tomcat']['tomcat_service_file'] = '/etc/systemd/system/tomcat.service'
default['qt_tomcat']['tomcat_download_temp_location'] = '/tmp/apache-tomcat-9.0.46.tar.gz'

