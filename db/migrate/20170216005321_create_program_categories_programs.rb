class CreateProgramCategoriesPrograms < ActiveRecord::Migration
  def change
    create_table :program_categories_programs do |t|
      t.references :program_category, :null=>false
      t.references :program, :null=>false
      t.boolean :main, :null=>false, :default=>false
      t.boolean :enable, :null=>false, :default=>true      
      t.timestamps :null=>false
    end

    add_index :program_categories_programs, [:program_category_id,:program_id],  :unique => true, :name=>'program_categories_programs_unique'
    add_foreign_key :program_categories_programs, :program_categories, on_delete: :cascade, on_update: :cascade
    add_foreign_key :program_categories_programs, :programs, on_delete: :cascade, on_update: :cascade
  end
end
