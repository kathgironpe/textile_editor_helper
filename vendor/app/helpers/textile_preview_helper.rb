module TextilePreviewHelper
  
  def to_html(m)
    require 'redcloth'
    require 'htmlentities'
    
    coder = HTMLEntities.new
    m = coder.decode(m)
    m = RedCloth.new(m).to_html 
    view_context.raw m
	end
  
end