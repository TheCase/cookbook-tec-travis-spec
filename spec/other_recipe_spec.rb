require 'spec_helper'

describe 'cookbook::other_recipe' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  before do
    stub_command('rpm -qa telnet').and_return(true)
  end
end
