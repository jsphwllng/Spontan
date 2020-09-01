class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [ :home ]

	def home
		@events = Event.where('date > ?', DateTime.now)
	end
end
