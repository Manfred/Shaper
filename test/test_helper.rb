require 'test/unit'

$:.unshift File.expand_path('../../lib', __FILE__)
require 'shaper'

require 'rubygems'

gem 'activesupport', '>= 3.0.7'
gem 'actionpack',    '>= 3.0.7'

require 'active_support/all'
require 'active_support/test_case'
require 'action_view'

class User
end

class MockTemplate
end