class FollowshipsController < ApplicationController
	skip_before_action :verify_authenticity_token

	
	def index
		@user = User.find(params[:member_id])
		@followees = @user.followees

	end


	def create
		unless already_follows?
			@followship = Followship.new
			@followee = User.find(params[:member_id])
			@followship.followee = @followee
			@followship.follower = current_user
			@followship.save
			redirect_to member_path(@followee)
		else
			destroy
		end
	end

	def already_follows?
		Followship.where(follower_id: current_user.id, followee_id: params[:member_id]).exists?
	end

	def destroy
		@followships = Followship.find(follower_id: current_user.id, followee_id: params[:member_id])
		@followships.destroy
		redirect_to member_path(@followee)
	end

	private


end
