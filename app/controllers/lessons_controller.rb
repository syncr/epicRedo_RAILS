 class LessonsController < ActionController::Base

  def index
    lessons = Lesson.all
    render("lessons/index.html.erb")
  end

  def new
    lesson = Lesson.new
    lessons = Lesson.all
    render("lessons/new.html.erb")
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
