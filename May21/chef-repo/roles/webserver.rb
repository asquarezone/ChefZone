name "webserver"
description "Web Server for QT"
run_list "recipe[lampserver::apache]", "recipe[qt_tomcat::default]", "recipe[envdemo::default]"
override_attributes({
  "starter_name" => " khaja",
})
