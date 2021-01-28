# InSpec test for recipe .::ubuntu_tomcat

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe package('openjdk-8-jdk') do
  it { should be_installed }
end

describe group('tomcat') do
  it { should exist }
end

describe user('tomcat') do
  it { should exist }
  its('group') { should eq 'tomcat' }
end

describe file('/opt/tomcat') do
  it { should exist }
end


describe file('/tmp/apache-tomcat-9.0.41.tar.gz') do
  it { should exist }
end

describe service('tomcat') do
  it { should be_enabled }
  it { should be_running }
end

describe port(8080) do
  it { should be_listening }
end
