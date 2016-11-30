class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.references :user,:null=>false
      t.references :program_language, :null=>false
      t.references :program_database, :null=>false      
      t.string :title, :limit=>60, :null=>false      
      t.boolean :enable, :null=>false, :default=>true
      t.integer :count, :null=>false, :default=>0
      t.timestamps :null=>false
    end
    
    create_table :program_contents do |t|
      t.text :content,:null=>false
    end
    
    add_index :programs, :user_id
    add_index :programs, :program_language_id
    add_index :programs, :program_database_id        
  end
end
