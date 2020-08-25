class EventsController < ApplicationController
  def index
    @events = Event.geocoded
    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
