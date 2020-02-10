class Student < ApplicationRecord
  belongs_to :teacher
  belongs_to :user, -> { where is_teacher: false }
  has_many :reading_responses
  has_many :reviews
  has_many :books, through: :reviews
end
