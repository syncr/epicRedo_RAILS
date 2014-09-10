class Section < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true
  validates :number, numericality: { only_integer: true }
  has_many :lessons
  
  default_scope { order(number: :asc) }
end
