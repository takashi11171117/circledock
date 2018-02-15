require 'spec_helper'

%w{python py-pip gettext ruby ruby-bundler}.each do |pkg|
    describe package(pkg) do
        it { should be_installed }
    end
end

describe package('docker-compose') do
    it { should be_installed.by('pip') }
end

describe command('kubectl version 2>&1') do
  its(:stdout) { should match (/GoVersion/) }
end

%w{rake serverspec docker-api}.each do |pkg|
    describe package(pkg) do
        it { should be_installed.by('gem') }
    end
end
