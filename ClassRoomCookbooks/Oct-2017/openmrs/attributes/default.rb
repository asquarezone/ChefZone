default['openmrs']['common']['packages'] = [ 'git', 'wget', 'tree' ]

#java specific attributes
default['java']['install_flavor'] = 'openjdk'
default['java']['jdk_version'] = '8'

#tomcat package name
if node['platform'] == 'redhat' then
    default['openmrs']['tomcat']['package'] = 'tomcat'
else
    default['openmrs']['tomcat']['package'] = 'tomcat7'
end

#mysql attributes
default['mysql']['version'] = '5.7'


default['mysql']['password'] ='rootroot'