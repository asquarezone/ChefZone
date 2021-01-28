# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html
property :url, String, default: 'https://referenceappkhaja.s3-us-west-2.amazonaws.com/gameoflife.war'
property :destination, String, default: '/opt/tomcat/webapps/gameoflife.war'
property :username, String, default: 'tomcat'
property :groupname, String, default: 'tomcat'

action :deploy do 
    remote_file new_resource.destination do
        source new_resource.url
        owner new_resource.username
        group new_resource.groupname
        action :create
    end
end