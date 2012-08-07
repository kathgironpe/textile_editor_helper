require_relative 'test_helper'
require_relative '../lib/helpers/formtastic'
require_relative 'abstract_unit'

class FormtasticTest  < MiniTest::Unit::TestCase

  include SimpleForm::ActionViewExtensions::FormHelper
  include SimpleForm::Inputs
  include SupportMethods

  def expected_initialize_output
    output = []
    output << '<script type="text/javascript">'
    output << %{$(document).ready(function() \{}
    output << '/* <![CDATA[ */'
    output << %{$.each($('textarea.textile_editor'),function(i,el){
                      TextileEditor.initialize($(el).attr('id'));
                       });}
    output << '/* ]]> */'
    output << '});'
    output << '</script>'
    output.join("\n").html_safe
  end

  def test_textile_editor_initialize_formtastic
    actual = textile_editor_initialize()
    assert_equal expected_initialize_output, actual
  end

end
