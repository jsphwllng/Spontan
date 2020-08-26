class MembersController < ApplicationController
 skip_before_action :authenticate_user!, only: :show
  def show
    @user = User.find(params[:id])
    @participations = @user.participations
    @review = Review.new
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

#I think these two methods belong here?!
   def follow(user)
    followees << user
  end

  def unfollow(followed_user)
    followees.delete followed_user
  end
end
