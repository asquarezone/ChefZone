# InSpec test for recipe .::management

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe file('/opt/tomcat/webapps/manager/META-INF/context.xml') do
  it { should exist }
end

describe file('/opt/tomcat/webapps/host-manager/META-INF/context.xml') do
  it { should exist }
end

describe service('tomcat') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
