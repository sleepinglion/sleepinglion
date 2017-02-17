class CreateProgramLanguages < ActiveRecord::Migration
  def change
    create_table :program_languages do |t|
      t.string :title, :limit=>60, :null=>false
      t.integer :program_categories_count, :null=>false, :default=>0      
      t.boolean :enable, :null=>false, :default=>true
      t.timestamps :null=>false
    end
  end
end
