require 'spec_helper'

describe 'hubot' do
  before do
    @node_version = 'v0.10.13'
  end
  it do
    should contain_nodejs__module('hubot').with_node_version(@node_version)
    should contain_nodejs__module('coffee-script').with_node_version(@node_version)
  end
end
