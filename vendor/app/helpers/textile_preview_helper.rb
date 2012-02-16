module TextilePreviewHelper
  
  def to_html(m)
    require 'redcloth'
    require 'htmlentities'
    
    coder = HTMLEntities.new
    m = coder.decode(m)
    m = RedCloth.new(m).to_html 
    m
	end
  
end