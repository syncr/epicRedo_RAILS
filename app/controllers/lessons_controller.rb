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
      flash[:notice] = "Your lesson has been created."
      redirect_to('/lessons/new')
    else
    render("new.html.erb")
    end
  end

  def show
    lesson = Lesson.find(params[:id])
    render("lessons/show.html.erb")
  end

  def update

  end

  def delete

  end

end
