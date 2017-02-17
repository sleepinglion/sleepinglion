class Program < ActiveRecord::Base
  is_impressionable
  validates_presence_of :title
  validates_length_of :title, :minimum => 4, :maximum => 60, :allow_blank => true
  belongs_to :program_category
  has_one :program_content, :foreign_key => :id, :dependent => :destroy
  accepts_nested_attributes_for :program_content, :allow_destroy => true
end
