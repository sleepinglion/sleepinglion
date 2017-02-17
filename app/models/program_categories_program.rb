class ProgramCategoriesProgram < ActiveRecord::Base
  validates_presence_of :program_category_id, :program_id
  validates :program_category_id, :numericality => { :only_integer => true }
  validates :program_id, :numericality => { :only_integer => true }  
  belongs_to :program_category, :counter_cache => true
  belongs_to :program
end
