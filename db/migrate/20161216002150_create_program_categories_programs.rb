class CreateProgramCategoriesPrograms < ActiveRecord::Migration
  def change
    create_table :program_categories_programs do |t|
      t.references :program_category,:null=>false
      t.references :program,:null=>false
      t.boolean :main, :null=>false, :default=>true
      t.boolean :enable, :null=>false, :default=>true
      t.timestamps :null=>false
    end

    add_foreign_key :program_categories_programs, :program_categories, on_delete: :cascade, on_update: :cascade
    add_foreign_key :program_categories_programs, :programs, on_delete: :cascade, on_update: :cascade
  end
end
