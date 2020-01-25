class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :details
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
