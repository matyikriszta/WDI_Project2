class Image < ActiveRecord::Base
  belongs_to :user
  attr_accessible :image, :title

  mount_uploader :image, AvatarUploader
end
