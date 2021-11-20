name "dbserver"
description "dbserver role"
run_list 'recipe[qtcommonapps::default]', 
    'recipe[qtdbapp::default]', 
    'recipe[qtdbapp::configure]'