class MembersController < ApplicationController
 skip_before_action :authenticate_user!, only: :show
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def destroy
    @user = User.find(params[:id])
    @user.destory
    # redirect_to some_path
  end

#I think these two methods belong here?!
   def follow(user)
    followees << user
  end

  def unfollow(followed_user)
    followees.delete followed_user
  end
end
