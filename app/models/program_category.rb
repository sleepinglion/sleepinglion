class ProgramCategory < ActiveRecord::Base
  validates_presence_of :title
  validates_length_of :title, :maximum => 60
  belongs_to :program_lanuage
  has_many :programs
end
