module SimpleForm
  module ActionViewExtensions
    module FormHelper
      include TextileEditorInitialize
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
