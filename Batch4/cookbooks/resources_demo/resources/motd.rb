resource_name :motd

default_action :create

action :create do
  file '/etc/motd' do
    content 'Welcome to Web server managed by chef'
    action :create
    only_if { ::File.exist?('/etc/motd') }
  end
end
