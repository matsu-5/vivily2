class CreateBlogFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_favorites do |t|
      t.integer :blog_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
