class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!


  def after_sign_in_path_for(resource)
   dashboard_path 
  end

  def after_update_path_for(resource)
   dashboard_path 
  end  

    rescue_from CanCan::AccessDenied do |exception|
      redirect_to dashboard_path, :alert => exception.message
    end
end
