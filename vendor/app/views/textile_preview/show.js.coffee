$("#<%= @editor_id%>").keyup ->
  $("#<%= @editor_id%>_destination").html('<%= @preview %>')