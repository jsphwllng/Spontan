class EventsController < ApplicationController
  def index
  end

  def new
    @event = Event.new
  end

  def show
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
  
  end

  def update
  end

  def destroy
  end
end
