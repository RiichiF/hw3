class EntriesController < ApplicationController
 
  def index
    @entries = Entry.all  
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["date"] = params["date"]   
    @entry.save
  redirect_to "/places"
  end

end
