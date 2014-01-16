class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :headline
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end