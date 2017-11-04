# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html
resource_name :myfile


property :destination, String, default: '/home/ec2-user/test'

default_action :create

action :create do
   file destination do
     content 'Hello'
     action :create
   end
   
end

action :delete do

end