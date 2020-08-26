class EventsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

  def index

    if params[:query].present?
      sql_query = "title ILIKE :query OR description ILIKE :query"
      @events= Event.where(sql_query, query: "%#{params[:query]}%")
      # @events = Event.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @events = Event.all
    end
  end
    # @events = Event.all
    # @search = params["search"]
    # raise
    # if @search.present?

    #   @name = @search["name"]
    #   @events = Event.where("name ILIKE ?", "%#{@name}%")

    # @events = Event.geocoded
    # @markers = @events.map do |event|
    #   {
    #     lat: event.latitude,
    #     lng: event.longitude
    #   }
    # end


  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    @event.save

  end

  def update

  end

  def destroy
  end

  private
  def event_params
    params.require(:event).permit(:category, :description, :location, :maximum_users, :date, :latitude, :longitude, :photo)
  end
end

