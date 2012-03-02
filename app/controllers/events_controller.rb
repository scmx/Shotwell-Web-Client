class EventsController < ApplicationController

  def index
    @events_by_year = Event.order('time_created DESC').all.group_by {|event| event.created_at.year }
  end

  def show
    @event = Event.find(params[:id])
  end

end
