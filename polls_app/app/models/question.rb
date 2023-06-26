class Question < ApplicationRecord
    belongs_to :poll
    has_many :answer_choices
    has_many :responses, through: :answer_choices
  
    def results
      answer_choices
        .select("answer_choices.*, COUNT(responses.id) AS responses_count")
        .left_joins(:responses)
        .group("answer_choices.id")
        .order("responses_count DESC")
        .pluck(:text, "COUNT(responses.id)")
        .to_h
    end
  end