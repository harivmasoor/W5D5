class Response < ApplicationRecord
    belongs_to :answer_choice
    belongs_to :respondent, class_name: 'User'
    has_one :question, through: :answer_choice
    has_one :poll, through: :question
  
    validates :answer_choice_id, presence: true
    validates :respondent_id, presence: true
    validate :not_duplicate_response
    validate :not_author_of_poll
  
    def sibling_responses
      self.question.responses.where.not(id: self.id)
    end
  
    def respondent_already_answered?
      sibling_responses.exists?(respondent_id: self.respondent_id)
    end
  
    def not_duplicate_response
      errors.add(:respondent_id, "has already answered the question") if respondent_already_answered?
    end
  
    def not_author_of_poll
      errors.add(:respondent_id, "cannot be the author of the poll") if self.poll.author_id == self.respondent_id
    end
  end

