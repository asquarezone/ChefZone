# default attributes
default['apache_phpinfo']['apache_package'] = value_for_platform(
  ['centos', 'redhat', 'suse', 'fedora' ] => {
    'default' => 'httpd'
    },
    ['ubuntu', 'debian'] => {
      'default' => 'apache2'
    }
  )

default['apache_phpinfo']['all_packages'] = value_for_platform(
    ['centos', 'redhat', 'suse', 'fedora' ] => {
      'default' => %w(httpd php php-mysql php-fpm)
      },
      ['ubuntu', 'debian'] => {
        'default' => %w(apache2 php libapache2-mod-php php-mysql)
      }
    )

default['apache_phpinfo']['info_page_path'] = '/var/www/html/info.php'


