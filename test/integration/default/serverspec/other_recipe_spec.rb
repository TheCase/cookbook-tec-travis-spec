require 'spec_helper'

describe 'Other' do
  it 'telnet is installed' do
    expect(package('telnet')).to be_installed
  end
end
