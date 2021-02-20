class CreateBlogs < ActiveRecord::Migration[4.2]
  def change
    create_table :blogs do |t|
      t.references :user, :null => false
      t.references :blog_category, :null => false
      t.string :title, :null => false, :limit => 60
      t.string :description, :null => false, :limit => 255
      t.string :photo, :limit => 150
      t.integer :blog_comments_count, :default => 0, :null => false
      t.integer :count, :null => false, :default => 0
      t.boolean :enable, :null => false, :default => true
      t.timestamps :null => false
    end

    create_table :blog_contents do |t|
      t.text :content
    end

    create_table :blog_comments do |t|
      t.references :blog, :null => false
      t.references :user
      t.string :name, :limit => 60
      t.string :encrypted_password, :limit => 40
      t.string :salt, :limit => 40
      t.string :photo, :limit => 150
      t.text :content, :null => false
      t.timestamps :null => false
    end

    add_index :blogs, :user_id
    add_index :blogs, :blog_category_id
    add_index :blog_comments, :blog_id
    add_index :blog_comments, :user_id
  end
end
