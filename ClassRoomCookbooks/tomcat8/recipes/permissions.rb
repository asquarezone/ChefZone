execute 'group ownership' do
  command 'chgrp -R tomcat /opt/tomcat/conf'
  action :run
end

execute 'group read write execute' do
  command 'chmod g+rwx /opt/tomcat/conf'
  action :run
end

execute 'read' do
  command 'chmod g+r /opt/tomcat/conf/*'
  action :run
end

execute 'ownership' do
  command 'chown -R tomcat /opt/tomcat/work/  /opt/tomcat/temp/ /opt/tomcat/logs/'
  action :run
end



