firewall 'default'

firewall_rule 'http' do
    port    80
    protocol  :tcp
    position 1
    command   :allow
end

httpd_service 'default' do
    action [:create, :start ]
end