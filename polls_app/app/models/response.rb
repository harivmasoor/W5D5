class Response < ApplicationRecord
    belongs_to :answer_choice
    belongs_to :respondent, class_name: 'User'
  end