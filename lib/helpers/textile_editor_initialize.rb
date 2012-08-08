class TextileEditorInitialize

  class << self
    def textile_editor_initialize
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
  end

end
