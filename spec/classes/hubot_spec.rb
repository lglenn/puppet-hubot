require 'spec_helper'
require './spec/classes/hubot_shared_context.rb'

describe 'hubot' do
  include_context "hubot shared context"
  it do
    should contain_nodejs__module('hubot').with_node_version(@node_version)
    should contain_nodejs__module('coffee-script').with_node_version(@node_version)
  end
end
