class CreateNewsArticles < ActiveRecord::Migration
  def change
    create_table :news_articles do |t|
      t.string :headline
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end
