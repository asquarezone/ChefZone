name "webserver"
description "Webserver Role"
run_list "recipe[webserver]"
override_attributes({
  "starter_name" => "khaja ibrahim",
})
