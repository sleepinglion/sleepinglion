class CreateProgramLinks < ActiveRecord::Migration[4.2]
  def change
    create_table :program_links do |t|
      t.references :program_categories_program,:null=>false
      t.string :title, :limit=>60, :null=>false
      t.string :description, :limit=>200
      t.string :repository, :limit=>200
      t.string :download_link, :limit=>200
      t.integer :download_count, :null=>false, :default=>0
      t.boolean :enable, :null=>false, :default=>true
      t.timestamps :null=>false
    end

    add_foreign_key :program_links, :program_categories_programs, on_delete: :cascade, on_update: :cascade
  end
end
