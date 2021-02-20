class BlogComment < ActiveRecord::Base
  include AnonBoard
  validates_presence_of :content
  belongs_to :user
  belongs_to :blog
  translates :content
  mount_uploader :photo, BlogCommentUploader
end
