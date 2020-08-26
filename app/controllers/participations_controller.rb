class ParticipationsController < ApplicationController

	def create
		@participation = Participation.new
		@event = Event.find(params[:event_id])
		@participation.event = @event
		@participation.user = current_user
		@participation.save
		redirect_to event_path(@event)
	end

	def destroy
		@event = Event.find(params[:event_id])
		@participations = @event.participations
		@participation = @participations.where(user_id = current_user.id)
		redirect_to event_path(@event)
	end

end