name 'qa'
description 'This is qa environment'
cookbook_versions ({
	'envdemo' => '> 1.0.0',
	'lampserver' => '~> 1.0.0'
})
default_attributes({ 'chef_client' => { 'interval' => '900' }} )