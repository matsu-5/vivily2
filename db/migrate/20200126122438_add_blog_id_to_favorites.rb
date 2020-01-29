class AddBlogIdToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :blog_id, :integer
  end
end
