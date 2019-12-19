class Discipline < ApplicationRecord
  has_many :discipline_courses
  has_many :courses, through: :discipline_courses


end
