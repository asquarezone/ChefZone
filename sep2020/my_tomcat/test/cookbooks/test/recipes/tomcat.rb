my_tomcat_service 'tomcat' do
    action :install
end

my_tomcat_service 'tomcat1' do
    action :restart
end