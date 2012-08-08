require "textile_editor_helper/version"
require 'action_view'

require_relative 'helpers/textile_editor_initialize'
require_relative 'helpers/default'

begin
  require 'simple_form'
  require_relative 'helpers/simple_form'
rescue LoadError
end

begin
  require 'formtastic'
  require_relative 'helpers/formtastic'
rescue LoadError
end

module TextileEditorHelper
end
