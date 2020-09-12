name 'prod'
description 'The uat environment'
cookbook_versions  'qthms-app' => '= 1.0.0'
override_attributes 'chef_client' => { 'interval' => '86400' } 