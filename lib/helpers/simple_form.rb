require 'simple_form'

module SimpleForm

  module ActionViewExtensions

    module FormHelper
      def textile_editor_initialize(*dom_ids)
        output = []
        unless request.xhr?
          output << '<script type="text/javascript">'
          output << %{$(document).ready(function() \{}
          output << '/* <![CDATA[ */'
          output << %{$.each($('textarea.textile_editor'),function(i,el){
                      TextileEditor.initialize($(el).attr('id'));
                       });}
          output << '/* ]]> */'
          output << '});'
          output << '</script>'
        end
        output.join("\n").html_safe
      end
    end
  end

  module Inputs
    class TextileEditorInput < Base

      def input
        @builder.text_area(attribute_name, input_html_options)
      end

    end
  end

end
