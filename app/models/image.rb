class Image < ActiveRecord::Base
  belongs_to :user
  has_one :user_profile, class_name: "User", foreign_key: :profile_image_id
  attr_accessible :image, :title, :position

  acts_as_list scope: :user
  mount_uploader :image, AvatarUploader
  validates_presence_of :image

end
