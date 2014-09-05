class Lesson < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true
  validates :number, numericality: { only_integer: true }

end
