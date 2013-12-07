class NewsArticle < ActiveRecord::Base
  include PgSearch
  multisearchable :against => [:headline, :content]
end
