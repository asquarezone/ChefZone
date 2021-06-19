name 'prod'
description 'This is prod environment'
cookbook_versions ({
	'envdemo' => '= 1.0.0',
	'lampserver' => '= 1.0.1'
})
default_attributes({ 'attribute_demo' => { 'key1' => 'from environment' }} )