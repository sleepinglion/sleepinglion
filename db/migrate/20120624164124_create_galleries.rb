class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :gallery_categories do |t|
      t.references :user, :null=>false
      t.references :gallery_category
      t.string :title, :null=>false, :limit=>60
      t.integer :galleries_count, :null=>false, :default=>0
      t.integer :gallery_categories_count, :null=>false, :default=>0
      t.boolean :leaf, :default=>true
      t.boolean :enable, :null=>false, :default=>true
      t.timestamps :null=>false
    end

    create_table :galleries do |t|
      t.references :user, :null=>false
      t.references :gallery_category,:null=>false
      t.string :title, :null=>false, :limit=>60
      t.string :location, :limit=>255
      t.string :photo,:null=>false
      t.string :content, :null=>false, :limit=>255
      t.boolean :enable, :null=>false, :default=>true
      t.timestamps :null=>false
    end

    add_index :gallery_categories, :title,  :unique => true
    add_index :gallery_categories, :user_id
    add_index :galleries, :user_id
    add_index :galleries, :gallery_category_id
  end
end
