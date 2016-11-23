name 'webserver'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures webserver'
long_description 'Installs/Configures webserver'
version '0.1.1'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/webserver/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/webserver' if respond_to?(:source_url)

#dependencies
depends 'selinux', '~> 0.9.0'
depends 'firewall', '~> 2.5.3'
depends 'apt', '~> 5.0.0'
depends 'httpd', '~> 0.4.4'
depends 'mysql', '~> 8.1.1'