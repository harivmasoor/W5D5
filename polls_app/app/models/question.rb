class Question < ApplicationRecord
    belongs_to :poll
    has_many :answer_choices, dependent: :destroy

    validates :text, presence: true
  end