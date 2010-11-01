class CustomQuestion < ActiveRecord::Base

  # Validations
  validates :question, :question_type_id, :presence => true
  
  # Associations
  belongs_to :question_type
end
