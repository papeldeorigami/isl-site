require 'nokogiri' 

Cms::Page.module_eval do
  include ActionView::Helpers::TextHelper

  include PgSearch
  multisearchable :against => [:label, :content]

  def truncated_text
    text = Nokogiri::HTML(content).text
    #truncate(sanitize(text), :omission => "...", :length => 50)
    text
  end
end
