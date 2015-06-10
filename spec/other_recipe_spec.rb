require 'spec_helper'

describe 'nagios::default' do
  before do
    stub_command('rpm -qa telnet').and_return(true)
  end
end
