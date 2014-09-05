 class LessonsController < ApplicationController

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
    lesson = Lesson.new(params[:lesson])
    lessons = Lesson.all
    if lesson.save
      redirect_to('/lessons/new')
    else
    render("new.html.erb")
    end
  end

  def show

  end

  def update

  end

  def delete

  end

end
