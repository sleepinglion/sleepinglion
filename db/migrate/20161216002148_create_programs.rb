class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title, :limit=>60, :null=>false
      t.string :description, :limit=>200
      t.string :service_link, :limit=>200
      t.string :download_link, :limit=>200
      t.integer :download_count, :null=>false, :default=>0
      t.boolean :use_database, :null=>false, :default=>true 
      t.boolean :enable, :null=>false, :default=>true      
      t.timestamps :null=>false
    end

    create_table :program_contents do |t|
      t.text :content,:null=>false
    end
  end
end
