name "webserver"
description "An example Chef role"
run_list "recipe[my_lamp::default]"
override_attributes({
  "starter_name" => "khaja ibrahim",
})
