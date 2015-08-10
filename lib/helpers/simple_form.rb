require_relative 'textile_editor_initialize'

module SimpleForm
  module ActionViewExtensions
    module FormHelper

      def textile_editor_initialize
        unless request.xhr?
          TextileEditorInitialize.textile_editor_initialize
        else
          [].join("\n").html_safe
        end
      end

    end
  end

  module Inputs
    class TextileEditorInput < Base

      def input(wrapper_options)
        @builder.text_area(attribute_name, merge_wrapper_options(input_html_options, wrapper_options))
      end

    end
  end
end
