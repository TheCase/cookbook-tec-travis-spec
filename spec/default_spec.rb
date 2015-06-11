require 'spec_helper'

describe 'cookbook::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  before do
    stub_command('/usr/bin/php -v').and_return(true)
    stub_command('/usr/sbin/httpd -t').and_return(true)
  end

  it 'these packages should be installed' do
    expect(chef_run).to install_package('httpd')
    expect(chef_run).to install_package('php')
  end

  it 'should create test file' do
    expect(chef_run).to render_file('/tmp/test.txt').with_content('test')
    expect(chef_run).to render_file('/tmp/test2.txt')
  end

  it 'should create test directory' do
    expect(chef_run).to create_directory('/tmp/test')
  end

  it 'should include other recipe' do
    expect(chef_run).to include_recipe('cookbook::other_recipe')
  end

  it 'should start and enable service httpd' do
    expect(chef_run).to start_service('httpd')
    expect(chef_run).to enable_service('httpd')
  end
end
