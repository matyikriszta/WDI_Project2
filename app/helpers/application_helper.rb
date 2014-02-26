module ApplicationHelper
  def get_profile_image(user)
    if user.default_photo
      image_tag(user.default_photo.image)
    else
      image_tag('green.jpg')
    end
  end

  def upgrade_button
    if current_user.membership == 'basic'
      link_to 'Upgrade to premium', update_membership_path
    else
      link_to 'Downgrade to basic', update_membership_path
    end
  end

  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
