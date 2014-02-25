module ApplicationHelper
  def get_profile_image(user)
    if user.default_photo
      image_tag(user.default_photo.image)
    else
      image_tag('green.jpg')
    end
  end
end
