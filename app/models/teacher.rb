class Teacher < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description, presence: true

  has_many :courses
end
