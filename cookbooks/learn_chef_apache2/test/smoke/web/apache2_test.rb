# # encoding: utf-8

# Inspec test for recipe learn_chef_apache2::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# unless os.windows?
  # This is an example test, replace with your own test.
#  describe user('root'), :skip do
#    it { should exist }
#  end
# end

# This is the test to make sure apache2 is installed and functional.
describe package('apache2') do
  it { should be_installed }
end

describe port(80) do
  it { should be_listening }
end


