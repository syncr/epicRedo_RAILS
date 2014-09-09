 class SectionsController < ApplicationController

  def index
    @sections = Section.all
    render("sections/index.html.erb")
  end

  def new
    @section = Section.new
    @sections = Section.all
    render("sections/new.html.erb")
  end

  def create
    @section = Section.new(params[:section])
    @sections = Section.all
    if @section.save
      flash[:notice] = "Your section has been created."
      redirect_to('/sections/new')
    else
    render("/sections/new.html.erb")
    end
  end

  def show
    @section = Section.find(params[:id])
    render("sections/show.html.erb")
  end

  def edit
    @section = Section.find(params[:id])
    render("sections/edit.html.erb")
  end

  def update
    @sections = Section.all
    @section = Section.find(params[:id])
    if @section.update(params[:section])
      flash[:notice] = "Your section has been updated."
      redirect_to("sections/#{@section.id}")
    else
      render("sections/edit.html.erb")
    end
  end

  def destroy
    @sections = Section.all
    @section = Section.find(params[:id]).destroy
    flash[:notice] = "Your section has been deleted."
    redirect_to('/sections/')
  end
end
