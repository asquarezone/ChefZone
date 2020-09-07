# InSpec test for recipe .::service

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe service('tomcat') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
