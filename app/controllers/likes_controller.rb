class LikesController < ApplicationController
  def index
    # @users_liked = current_user.find_voted_items
    # @users_liked_by = current_user.get_voted User

    @user_matches = current_user.match

  end

  def create_like
    @user = User.find(params[:id])
    @user.vote voter: current_user
    redirect_to user_profile_path @user
  end
end
