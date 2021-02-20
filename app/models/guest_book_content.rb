class GuestBookContent < ActiveRecord::Base
  validates_presence_of :content
  belongs_to :guest_book, foreign_key: :id, inverse_of: :guest_book_content
end
