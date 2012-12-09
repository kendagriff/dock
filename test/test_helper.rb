require File.expand_path('../../lib/dock', __FILE__)
require 'turn'
require 'pry'
require 'active_support/test_case'

class ActiveSupport::TestCase
  include Dock

  Turn.config.format = :dot
end
