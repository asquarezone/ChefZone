name  'dbserver'
description 'This is qthms dbserver'
run_list 'qt-general::default','qthms-db::default'
default_attributes(
    'chef_client' => {
        'interval' => '7200'
    }
)