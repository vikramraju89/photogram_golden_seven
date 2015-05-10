class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @picture = Photo.find_by({:id => params["id"]})
  end

  def create_row
    @p = Photo.new
    @p.caption = params["the_caption"]
    @p.source = params["the_source"]
    @p.save
  end

  def destroy
    @doomed = Photo.find_by({:id => params["id"]})
    @doomed.destroy
  end

  def edit_form
    @edit = Photo.find_by({:id => params["id"]})
  end

  def update_row
    @update = Photo.find_by({:id => params["id"]})
    @update.caption = params["the_caption"]
    @update.save
    @update.source = params["the_source"]
    @update.save
  end


end
