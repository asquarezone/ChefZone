# InSpec test for recipe .::deploy


describe file('/var/lib/tomcat9/webapps/gameoflife.war') do
  it { should exist }
end
