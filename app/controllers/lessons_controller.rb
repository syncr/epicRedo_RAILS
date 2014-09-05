 class LessonsController < ActionController::Base

  def index
    lesson = Lesson.new
    lessons = Lesson.all
    render("lessons/index.html.erb")
  end

  def new

  end

  def create

  end

  def read

  end

  def update

  end

  def delete

  end

end
