class User < ActiveRecord::Base
  has_many :images
  
  has_many :messages_as_sender, class_name: 'Message', foreign_key: :sender_id
  has_many :messages_as_receiver, class_name: 'Message', foreign_key: :receiver_id

  has_many :likes
  has_many :has_liked, class_name: 'Like', foreign_key: :liked_user_id 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end