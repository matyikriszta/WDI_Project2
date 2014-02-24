class Image < ActiveRecord::Base
  belongs_to :user
  has_one :user_profile, class_name: "User", foreign_key: :profile_image_id
  attr_accessible :image, :title


  mount_uploader :image, AvatarUploader
end
