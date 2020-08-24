class TranslateBlogs < ActiveRecord::Migration[4.2]
    def change
        reversible do |dir|
            dir.up do
                Blog.create_translation_table!({ title: :string, description: :string}, migrate_data: true)
                remove_column :blogs, :title
                remove_column :blogs, :description

                BlogContent.create_translation_table!({ content: :text}, migrate_data: true)
                remove_column :blog_contents, :content
            end

            dir.down do
                Blog.drop_translation_table! migrate_data: true
                BlogContent.drop_translation_table! migrate_data: true
            end
        end
    end
end
