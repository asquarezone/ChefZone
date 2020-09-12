name  'appserver'
description 'This is qthms appserver'
run_list 'qt-general::default', 'qthms-app::default'
default_attributes(
    'chef_client' => {
        'interval' => '3600'  
    }
)