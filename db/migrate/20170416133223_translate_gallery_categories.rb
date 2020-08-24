class TranslateGalleryCategories < ActiveRecord::Migration[4.2]
    def change
        reversible do |dir|
            dir.up do
                GalleryCategory.create_translation_table!({ title: :string}, migrate_data: true)
                remove_column :gallery_categories, :title
            end

            dir.down do
                GalleryCategory.drop_translation_table! migrate_data: true
            end
        end
    end
end
