class Lesson < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true
  validates :number, numericality: { only_integer: true }

  default_scope { order(number: :asc) }


  def next
    next_lesson = Lesson.where("number > ?", self.number).first
  end

  def prev
    prev_lesson = Lesson.where("number < ?", self.number).last
  end
end
