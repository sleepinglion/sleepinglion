class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.references :program_category, :null=>false
      t.references :program_database
      t.string :title, :limit=>60, :null=>false
      t.string :service_link, :limit=>200
      t.string :download_link, :limit=>200
      t.integer :download_count, :null=>false, :default=>0
      t.boolean :enable, :null=>false, :default=>true      
      t.timestamps :null=>false
    end

    create_table :program_contents do |t|
      t.text :content,:null=>false
    end

    add_foreign_key :programs, :program_categories, on_delete: :cascade, on_update: :cascade
    add_foreign_key :programs, :program_databases, on_delete: :cascade, on_update: :cascade
  end
end
