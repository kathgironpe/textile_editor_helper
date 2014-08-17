$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'yaml'
require 'rubygems'
require 'action_controller'
require 'action_controller/test_case'
require 'action_view/helpers'
require 'simple_form'

# Show backtraces for deprecated behavior for quicker cleanup.
ActiveSupport::Deprecation.debug = true

ActionController::Base.logger = nil

# ActionController::Base.ignore_missing_templates = false
ActionController::Routing::Routes.reload rescue nil

ActionController::Base.asset_host = "localhost"

require_relative 'support_methods'
