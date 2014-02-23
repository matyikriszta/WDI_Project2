class UsersController < ApplicationController
  authorize_resource
  
  def index
    @users = User.where(gender: current_user.get_preference).page(params[:page]).per(12)
  end

  def search

    if params['distance'].blank?
      @users =  User.where(gender: current_user.get_preference).page(params[:page]).per(12)
    else
      @users = current_user.nearbys(params[:distance]).where(gender: current_user.get_preference).page(params[:page]).per(12)
    end    

    unless params['interest_list'].blank?
      @users = @users.tagged_with(params['interest_list']).page(params[:page]).per(12)
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
