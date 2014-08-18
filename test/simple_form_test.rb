require_relative 'test_helper'
require_relative '../lib/helpers/simple_form'
require_relative 'abstract_unit'
require_relative '../lib/helpers/textile_editor_initialize'

class SimpleFormTest < Minitest::Test
  include SimpleForm::ActionViewExtensions::FormHelper
  include SimpleForm::Inputs
  include SupportMethods

  def expected_initialize_output
    TextileEditorInitialize.textile_editor_initialize
  end

  def test_textile_editor_initialize_simple_form
    actual = textile_editor_initialize()
    assert_equal expected_initialize_output, actual
  end
end
