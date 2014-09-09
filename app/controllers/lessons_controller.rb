 class LessonsController < ApplicationController

  def index
    @sections = Section.all
    @lessons = Lesson.all
    render("lessons/index.html.erb")
  end

  def new
    @lesson = Lesson.new
    @lessons = Lesson.all
    render("lessons/new.html.erb")
  end

  def create
    @lesson = Lesson.new(params[:lesson])
    @lessons = Lesson.all
    if @lesson.save
      flash[:notice] = "Your lesson has been created."
      redirect_to("/lessons/new")
    else
    render("/lessons/new.html.erb")
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    render("lessons/show.html.erb")
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render("lessons/edit.html.erb")
  end

  def update
    @lessons = Lesson.all
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lesson])
      flash[:notice] = "Your lesson has been updated."
      redirect_to("/lessons/#{@lesson.id}")
    else
      render("lessons/edit.html.erb")
    end
  end

  def destroy
    @lessons = Lesson.all
    @lesson = Lesson.find(params[:id]).destroy
    flash[:notice] = "Your lesson has been deleted."
    redirect_to("/lessons/")
  end
end
