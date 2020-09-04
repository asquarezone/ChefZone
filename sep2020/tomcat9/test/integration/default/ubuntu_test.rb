# InSpec test for recipe .::ubuntu

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# Verifying java installation
describe package('openjdk-11-jdk') do
  it { should be_installed }
end

# verifying tomcat installation
describe package('tomcat9') do
  it { should be_installed }
end

# verify if the tomcat9 service is installed,enable and running

describe service('tomcat9') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

# verify if the tomcat-users.xml file exists 

describe file('/etc/tomcat9/tomcat-users.xml') do
  it { should exist }
end

# verify if 8080 port is listening

describe port(8080) do
  it { should be_listening }
end



