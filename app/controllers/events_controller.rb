class EventsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.find(event_params)
    @event.user_id = current_user.id

  end

  def update

  end

  def destroy
  end

  private
  def event_params
    params.require(:event).permit(:category, :description, :location, :maximum_users, :date, :latitude, :longitude)
  end
end

