class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Table Associations
  has_one :teacher, -> { where is_teacher: true }
  has_one :student, -> { where is_teacher: false }
end
