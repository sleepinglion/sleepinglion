class CreateProgramDatabases < ActiveRecord::Migration
  def change
    create_table :program_databases do |t|
      t.string :title, :limit=>60, :null=>false
      t.integer :programs_count, :null=>false, :default=>0      
      t.boolean :enable, :null=>false, :default=>true
      t.timestamps :null=>false
    end
  end
end
