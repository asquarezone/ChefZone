name "webserver"
description "Webserver role"
run_list 'recipe[qtcommonapps::default]', 
    'recipe[qtcommonapps::special]', 
    'recipe[qtwebapp::default]', 
    'recipe[qtwebapp::configure]'