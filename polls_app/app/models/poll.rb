class Poll < ApplicationRecord
    belongs_to :author, class_name: 'User'
    has_many :questions, dependent: :destroy

    validates :title, presence: true, uniqueness: true
  end