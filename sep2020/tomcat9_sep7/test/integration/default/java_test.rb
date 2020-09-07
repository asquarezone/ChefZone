# InSpec test for recipe .::java

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# Ensure Java 11 is installed
JAVA_PACKAGE = attribute('java_package')

describe package(JAVA_PACKAGE) do
  it { should be_installed }
end
