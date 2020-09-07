# InSpec test for recipe .::tomcat

describe group('tomcat') do
  it { should exist }
end

describe user('tomcat') do
  it { should exist }
  its('group') { should eq 'tomcat' }
  its('home') { should eq '/opt/tomcat' }
end

describe file('/tmp/tomcat9.tar.gz') do
  it { should exist }
end

describe file('/opt/tomcat') do
  its('type') { should eq :directory }
  it { should be_directory }
end
