class Teacher < ApplicationRecord
  belongs_to :user, -> { where is_teacher: true }
  has_many :students
  has_many :books
end
