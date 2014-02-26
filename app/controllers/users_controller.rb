class UsersController < ApplicationController
  # authorize_resource

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

    unless params[:membership] == 'all'
      @users = @users.where(membership: params[:membership])
    end

    date_from = params[:age_from].to_i.years.ago
    date_to = params[:age_to].to_i.years.ago

    @users = @users.where('dob >= ? AND dob <= ?', date_to, date_from).page(params[:page]).per(12)
    render :index
  end

  def show
    @user = User.find(params[:id])
  end

  def dashboard
    @messages = current_user.received_messages
    @users_matched = current_user.match
    @votes = Vote.where(votable_id: current_user.id)
  end

  def update_membership
    current_user.toggle_membership
    redirect_to dashboard_path
  end

  def update
   @user = User.find params[:id]

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(user_profile.path(@user), :notice => 'User was successfully updated.') }
        format.json { respond_with_bip(@user) }
      else
        format.html { redirect_to user_profile.path(@user) }
        format.json { respond_with_bip(@user) }
      end
    end
end

end
