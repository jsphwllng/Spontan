class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [ :home ]

	def home
		@events = Event.geocoded.where('date > ?', DateTime.now)
		@markers = @events.map do |marker|
			# unless marker.event.date < DateTime.now
				{
					lat: marker.latitude,
					lng: marker.longitude
				}
			# end
		end
	end
end
