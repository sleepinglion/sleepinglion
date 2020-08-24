class TranslateBlogCategories < ActiveRecord::Migration[4.2]
    def change
        reversible do |dir|
            dir.up do
                BlogCategory.create_translation_table!({ title: :string}, migrate_data: true)
                remove_column :blog_categories, :title
            end

            dir.down do
                BlogCategory.drop_translation_table! migrate_data: true
            end
        end
    end
end
