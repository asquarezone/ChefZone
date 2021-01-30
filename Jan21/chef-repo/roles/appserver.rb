name "appserver"
description "This is appserver role"
run_list "recipe[ltutils::utils]", "recipe[lttomcat::installation]"
override_attributes({
  "starter_name" => "khaja ibrahim",
})
