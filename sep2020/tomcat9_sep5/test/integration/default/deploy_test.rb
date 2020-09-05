# InSpec test for recipe .::deploy

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe http('http://localhost:8080/gameoflife/') do
  its('status') { should cmp 200 }
end

