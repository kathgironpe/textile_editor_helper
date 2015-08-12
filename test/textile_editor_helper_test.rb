require_relative 'test_helper'
require_relative 'abstract_unit'
require_relative '../lib/helpers/default'
require_relative '../lib/helpers/textile_editor_initialize'
require 'ostruct'

class TextileEditorHelperTest < Minitest::Test
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::AssetTagHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::FormHelper
  include ActionView::Helpers::JavaScriptHelper

  include SupportMethods

  def create_editor(object, field, options={})
    output = textile_editor(object, field, options)
    assert_equal text_area(object, field, options.merge(class: "textile_editor")), output
  end

  def expected_initialize_output
    TextileEditorInitialize.textile_editor_initialize
  end

  # Tests
  def test_textile_editor
    create_editor('article', 'body')
    assert_includes textile_editor('article', 'body'), "textile_editor"
  end

  def test_textile_editor_initialize
    create_editor('article', 'body')
    output = textile_editor_initialize()
    assert_equal expected_initialize_output, output
  end

  def test_textile_editor_initialize_with_custom_buttons
    b = '<button id="test_button" title="Hello world">Hello</button>'
    button_data = ["TextileEditor.buttons.push(""#{b}"");" ]
    actual = textile_editor_button('Hello',
                                   id: 'test_button',
                                   title: 'Hello world'
                                  )

    assert_equal button_data, actual

    create_editor('article', 'body')
    output = textile_editor_initialize()
    assert_equal expected_initialize_output, output
  end
end
