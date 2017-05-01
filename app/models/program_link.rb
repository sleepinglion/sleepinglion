class ProgramLink< ActiveRecord::Base
  validates_presence_of :program_categories_program_id
  validates :program_categories_program_id, :numericality => { :only_integer => true }
  belongs_to :program_categories_program
end
