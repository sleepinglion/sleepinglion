class QuestionContent < ActiveRecord::Base
  validates_presence_of :content
  belongs_to :question, :foreign_key => :id, inverse_of: :question_content
end
