require_relative 'textile_editor_initialize'

module Formtastic
  module Helpers
    module FormHelper
      def textile_editor_initialize
        if request.xhr?
          [].join("\n").html_safe
        else
          TextileEditorInitialize.textile_editor_initialize
        end
      end
    end
  end

  module Inputs

    class TextileEditorInput
      include Base
      include Base::Placeholder
      def input_html_options
        {
          cols: builder.default_text_area_width,
          rows: builder.default_text_area_height,
          class: 'textile_editor'
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
