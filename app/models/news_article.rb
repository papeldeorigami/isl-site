class NewsArticle < ActiveRecord::Base
  searchable do  
    text :headline, :content
  end  
end
