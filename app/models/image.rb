class Image < ActiveRecord::Base
  belongs_to :user
  has_one :user_profile, class_name: "User", foreign_key: :profile_image_id
  attr_accessible :image, :title

  mount_uploader :image, AvatarUploader
  validates_presence_of :image

  validate :user_can_upload

  def user_can_upload
    if self.user.membership == 'basic'
      if self.user.images.count >= 1
        errors.add(:base, 'You\'ve exceeded your photo allowance. Upgrade to premium')
      end
    end
  end

end
