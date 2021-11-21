name 'dev'
description 'developer environment'
cookbook_versions(
    'experiment' => '>= 1.0.0',
    'tomcat9' => '>= 1.0.0'
)
default_attributes 'qtcommonapps' => { 'message' => 'from environment'}