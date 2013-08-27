require 'spec_helper'
require './spec/classes/hubot_shared_context.rb'

describe 'hubot::hipchat' do
  include_context "hubot shared context"
  it { should include_class('hubot') }
  it do
    should contain_package('icu4c').with_provider('homebrew').with_ensure('installed')
  end
  it do
    should contain_nodejs__module('hubot-hipchat').with_node_version(@node_version)
  end
end
