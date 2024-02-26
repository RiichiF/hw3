class PlacesController < ApplicationController

  def index
    @places = Place.all  
  end

  def show
    @place = Place.where({"id" => params["id"]})[0]
    @entries = Entry.where({""})
  end

  def new
    #@place = Place.new
  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
  
  redirect_to "/places"
  
  end

end
