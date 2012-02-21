class PhotosController < ApplicationController

  def index
    @event = Event.find(params[:event_id])
    @photos = Photo.find_all_by_event_id(params[:event_id])
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def image
    @photo = Photo.find(params[:id])
    send_file @photo.filename, :disposition => 'inline' # FIXME: properly set content-type (:type => MIME::Types.type_for(@photo.filename) or smth. like this)
  end

end
