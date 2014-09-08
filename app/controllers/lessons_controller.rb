 class LessonsController < ApplicationController

  def index
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
      redirect_to('/lessons/new')
    else
    render("new.html.erb")
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
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lesson])
      render('lessons/list.html.erb')
    else
      render('lessons/edit.html.erb')
    end
  end

  def destroy

  end

end
