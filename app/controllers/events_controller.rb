class EventsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

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
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if  @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def update

  end

  def destroy
  end

  private
  def event_params
    params.require(:event).permit(:title, :category, :description, :location, :maximum_users, :date, :latitude, :longitude, :photo)
  end
end

