class EventsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

  def index

    if params[:query_event].present? || params[:query_category].present?
      sql_query = "title ILIKE :query_event OR description ILIKE :query_event"
        sql_query_category = "category ILIKE :query_category"
      @events= Event.where(sql_query, query_event: "%#{params[:query_event]}%")
      @events = @events.where(sql_query_category, query_category: "%#{params[:query_category]}%")
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

