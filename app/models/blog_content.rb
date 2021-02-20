class BlogContent < ActiveRecord::Base
  validates_presence_of :content
  belongs_to :blog, foreign_key: :id, inverse_of: :blog_content
  translates :content  
end
