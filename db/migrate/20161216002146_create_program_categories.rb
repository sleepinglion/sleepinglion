class CreateProgramCategories < ActiveRecord::Migration
  def change
    create_table :program_categories do |t|
      t.references :program_language,:null=>false
      t.string :title, :limit=>60, :null=>false
      t.string :link, :limit=>200
      t.boolean :enable, :null=>false, :default=>true
      t.timestamps :null=>false
    end

    add_foreign_key :program_categories, :program_languages, on_delete: :cascade, on_update: :cascade
  end
end
