# InSpec test for recipe .::mysqlconfig

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe service('mysql-fromchef') do
  it { should be_enabled }
  it { should be_running }
end

