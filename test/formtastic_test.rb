require_relative 'test_helper'
require_relative '../lib/helpers/formtastic'
require_relative '../lib/helpers/textile_editor_initialize'
require_relative 'abstract_unit'

class FormtasticTest < Minitest::Test
  include SimpleForm::ActionViewExtensions::FormHelper
  include SimpleForm::Inputs
  include SupportMethods

  def expected_initialize_output
    TextileEditorInitialize.textile_editor_initialize
  end

  def test_textile_editor_initialize_formtastic
    actual = textile_editor_initialize()
    assert_equal expected_initialize_output, actual
  end
end
