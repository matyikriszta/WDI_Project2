class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :stalker, class_name: 'User', foreign_key: :liked_user_id

  attr_accessible :liked_user_id, :user_id
end
