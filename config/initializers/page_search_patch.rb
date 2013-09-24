require 'nokogiri' 

Cms::Page.module_eval do
  include ActionView::Helpers::TextHelper

  searchable do  
    text :label, :content  
  end  
  
  def truncated_text
    text = Nokogiri::HTML(content).text
    truncate(sanitize(text), :omission => "...", :length => 50)
  end
end
