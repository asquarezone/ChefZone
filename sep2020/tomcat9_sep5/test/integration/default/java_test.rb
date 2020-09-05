# InSpec test for recipe .::java

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# Ensure Java 11 is installed
describe package('openjdk-11-jdk') do
  it { should be_installed }
end

