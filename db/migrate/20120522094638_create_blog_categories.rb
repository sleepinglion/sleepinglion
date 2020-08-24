class CreateBlogCategories < ActiveRecord::Migration[4.2]
  def change
    create_table :blog_categories do |t|
      t.references :user, :null=>false
      t.references :blog_category
      t.string :title, :null=>false, :limit=>60
      t.integer :blogs_count, :null=>false, :default=>0
      t.integer :blog_categories_count, :null=>false, :default=>0
      t.boolean :leaf, :default=>true
      t.boolean :enable, :null=>false, :default=>true
      t.timestamps :null=>false
    end

    add_index :blog_categories, :title,  :unique => true
    add_index :blog_categories, :blog_category_id
    add_index :blog_categories, :user_id
  end
end
