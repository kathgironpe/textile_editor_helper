class TextilePreviewController < ApplicationController 
  
  respond_to :js 
  
  include TextilePreviewHelper
  
  def show
    @text = params[:text_data]
    @editor_id = params[:id]
    @preview = to_html(@text)
  end
  
  
end