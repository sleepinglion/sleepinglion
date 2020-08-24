class TranslateGalleries < ActiveRecord::Migration[4.2]
    def change
        reversible do |dir|
            dir.up do
                Gallery.create_translation_table!({ title: :string, location: :string, content: :string }, migrate_data: true)
                remove_column :galleries, :title
                remove_column :galleries, :location
                remove_column :galleries, :content
            end

            dir.down do
                Gallery.drop_translation_table! migrate_data: true
            end
        end
    end
end
