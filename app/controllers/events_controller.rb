class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  now_date = DateTime.now
  def index

    if params[:query_event].present? || params[:query_category].present? || params[:query_location].present?
        sql_query = "title ILIKE :query_event OR description ILIKE :query_event"
        sql_query_category = "category ILIKE :query_category"
        sql_query_location = "location ILIKE :query_location"
        @events = Event.all
        @events= @events.where(sql_query, query_event: "%#{params[:query_event]}%")
        @events = @events.near(current_user.location, params[:query_location].to_i) if params[:query_location] != "0"
        @events = @events.where(sql_query_category, query_category: "%#{params[:query_category]}%")

        @events = @events.where("date > ?", DateTime.now)

    else
      @events = Event.where("date > ?", DateTime.now)
    end

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
    @event = Event.find(params[:id])
      if @event.user_id == current_user.id
      @event.update(event_params)
      end
  end

  def destroy
    @event = Event.find(params[:id])
      if @event.user_id == current_user.id
      @event.destroy
      end
  end

  private
  def event_params
    params.require(:event).permit(:title, :category, :description, :location, :maximum_users, :date, :latitude, :longitude, :photo)
  end
end

