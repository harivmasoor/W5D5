class User < ApplicationRecord
    has_many :authored_polls, class_name: 'Poll', foreign_key: :author_id, dependent: :destroy
    has_many :responses, foreign_key: :respondent_id, dependent: :destroy

    validates :username, presence: true, uniqueness: true
  end