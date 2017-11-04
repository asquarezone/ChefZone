# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html
resource_name  :updatepackage

default_action  :update

#property :message, String, default: 'Packages Updated'
action :update do
        execute 'for redhat' do
            command 'yum update'
            action :run
        only_if node['platform'] == 'redhat'
        end

    #log message
end