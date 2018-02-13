require 'spec_helper'
describe command('python -V 2>&1') do
  its(:stdout) { should match (/Python 2.7/) }
end
