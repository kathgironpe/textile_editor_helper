module TextileEditorInitialize

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
