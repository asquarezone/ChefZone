name "dbserverrole"
description "db server role"
run_list "recipe[webserver]", "recipe[webserver::firewall_config]","recipe[webserver::db_config]"


