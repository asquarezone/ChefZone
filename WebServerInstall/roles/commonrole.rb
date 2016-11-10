name "commonrole"
description "A common Chef role to be applied to all node"
run_list "recipe[all-nodes::default]"
override_attributes({
  "starter_name" => "Khaja Ibrahim",
})
