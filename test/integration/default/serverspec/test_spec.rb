require 'spec_helper'

describe 'TheTest' do

  it 'Test has a configuration file' do
   expect(file('/tmp/test.txt')).to be_file
  end

  it 'Test is running' do
    expect(service("init")).to be_running
  end

end
