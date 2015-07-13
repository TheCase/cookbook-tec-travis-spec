require 'spec_helper'

describe 'TheTest' do
  it 'file test.txt exists' do
    expect(file('/tmp/test.txt')).to be_file
  end

  it 'file test2.txt exists' do
    expect(file('/tmp/test2.txt')).to be_file
  end

  it 'test2 directory exists' do
    expect(directory('/tmp/test')).to be_directory
  end

  it 'httpd is running' do
    expect(service('httpd')).to be_running
  end
end
