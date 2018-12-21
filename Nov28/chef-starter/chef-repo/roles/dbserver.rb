name "dbserver"
description "Db Server"
run_list "recipe[dbserver]"
override_attributes({
  "starter_name" => "khaja ibrahim",
})
