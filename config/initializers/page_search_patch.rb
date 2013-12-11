require 'nokogiri' 

Cms::Page.module_eval do
  include ActionView::Helpers::TextHelper

  include PgSearch
  multisearchable :against => [:label, :content]

  def plain_content
    sanitize(Nokogiri::HTML(content).text.strip)
  end

  def truncated_text
    truncate(plain_content, :omission => "...", :length => 50)
    #sanitize(text)
  end
end
