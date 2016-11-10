name "webapp-linux"
description "A role for the linux webservers"
run_list "recipe[webapp-linux::default]"
override_attributes({
  "starter_name" => "Khaja Ibrahim",
})
