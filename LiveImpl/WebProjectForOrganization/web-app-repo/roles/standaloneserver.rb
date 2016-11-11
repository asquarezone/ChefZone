name "standaloneserverrole"
description "standalone server role"
run_list "recipe[webserver]", "recipe[webserver::firewall_config]","recipe[webserver::webuser]","recipe[webserver::webserver_config]","recipe[webserver::db_config]"


