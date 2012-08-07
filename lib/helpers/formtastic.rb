module Formtastic
  module Helpers
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

    class TextileEditorInput
      include Base
      include Base::Placeholder

      def input_html_options
        {
          :cols => builder.default_text_area_width,
          :rows => builder.default_text_area_height,
          :class => "textile_editor"
        }.merge(super)
      end

      def to_html
        input_wrapping do
          label_html <<
          builder.text_area(method, input_html_options)
        end
      end

    end
  end
end
