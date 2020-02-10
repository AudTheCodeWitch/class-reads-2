class Book < ApplicationRecord
  belongs_to :teacher
  has_many :reviews
  has_many :reading_responses
end
