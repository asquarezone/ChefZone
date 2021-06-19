# This is a Chef Infra recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to Chef Infra, #{node["starter_name"]}!" do
  level :info
end

# For more information, see the documentation: https://docs.chef.io/recipes/
