class ActorsController < ApplicationController

  def index
    @actor = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def new_form
  end

  def create_actor
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]
    @actor.save

    render("show")
  end

  def edit_form
    @actor = Actor.find(params[:id])
  end

  def update_actor
    @actor = Actor.find(params[:id])
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]
    @actor.save

    redirect_to("/actors/#{params[:id]}")
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy

  end

end
