class Post < ActiveRecord::Base
  include PgSearch
  multisearchable :against => [:headline, :content]

  def self.latest
    order("posts.updated_at DESC")
  end
end
