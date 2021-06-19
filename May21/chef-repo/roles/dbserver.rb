name "dbserver"
description "DB Server for mysql"
run_list "recipe[lampserver::mysql]"
override_attributes({
  "starter_name" => " khaja",
})
