# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html
property :javapackagename, String, default: 'openjdk-8-jdk'

action :installjava do
    apt_update 'update ubuntu packages' do
        ignore_failure true
        action :update
        only_if { node['platform'] == 'ubuntu'}
      end
      
      java_package = new_resource.javapackagename
      package java_package do
        action :install
      end
end