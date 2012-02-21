class PhotosController < ApplicationController

  def index
    @event = Event.find(params[:event_id])
    @photos = Photo.find_all_by_event_id(params[:event_id])
  end

  def show
    @photo = Photo.find(params[:id])
  end

end
