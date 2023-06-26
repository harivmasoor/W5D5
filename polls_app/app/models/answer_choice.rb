class AnswerChoice < ApplicationRecord
    belongs_to :question
    has_many :responses, dependent: :destroy

    validates :text, presence: true
  end