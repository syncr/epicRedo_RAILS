class Section < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :lessons

end
