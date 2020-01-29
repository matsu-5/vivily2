class CreateBlogComments < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_comments do |t|
      t.text :content
      t.integer :blog_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
