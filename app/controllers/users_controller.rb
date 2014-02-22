class UsersController < ApplicationController
  def index
    @users = User.where(gender: current_user.get_preference).page(params[:page])
  end

  def search

    if params['distance'].blank?
      @users =  User.where(gender: current_user.get_preference).page(params[:page])
    else
      @users = current_user.nearbys(params[:distance]).where(gender: current_user.get_preference).page(params[:page])
    end    

    unless params['interest_list'].blank?
      @users = @users.tagged_with(params['interest_list']).page(params[:page])
    end
    # raise
    render :index
  end

  def show
    @user = User.find(params[:id])
  end

  def dashboard
  end


end
