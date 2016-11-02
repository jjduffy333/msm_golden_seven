class DirectorsController < ApplicationController

  def index
    @director = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def new_form
    @director = Director.new
  end
  
  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]
    @director.save

    render("show")
  end

end