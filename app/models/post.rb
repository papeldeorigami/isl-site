class Post < ActiveRecord::Base
  include ActionView::Helpers::TextHelper

  attr_accessible :author, :text, :title

  validates :text, :presence => { :message => "Por favor, escreva o texto da sua notícia."}
  validates :title, :presence => { :message => "Por favor, escreva um título."}

  def truncated_text
  	  truncate(sanitize(text), :omission => "... (continua)", :length => 50)
  end
end
