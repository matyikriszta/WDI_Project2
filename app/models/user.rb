class User < ActiveRecord::Base
  acts_as_voter
  acts_as_votable

  acts_as_messageable :table_name => "messages",
                      :required   => [:topic, :body],
                      :class_name => "ActsAsMessageable::Message",
                      :dependent  => :nullify

  # has_many :messages_as_sender, class_name: 'Message', foreign_key: :sender_id
  # has_many :messages_as_receiver, class_name: 'Message', foreign_key: :receiver_id

  has_many :images, order: :position

  belongs_to :default_photo, :class_name => "Image", foreign_key: :profile_image_id

  # has_many :likes
  # has_many :has_liked, class_name: 'Like', foreign_key: :liked_user_id 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :location, :interest_list, :gender, :preference, :dob, :description, :body, :topic
  # attr_accessible :title, :body

  geocoded_by :location
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode

  acts_as_taggable_on :interests

  validates :name, :location, :gender, :preference, :dob, :membership, presence: true

  validate :older_than_18

  before_validation :set_membership_to_basic

  def older_than_18
    errors.add( :dob, 'must be greater than 18 years') if age < 18
  end

  def age
    if dob
      now = Time.now.utc.to_date
      now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    else
      0
    end
  end

  def get_preference
    if self.preference == 'both'
      ['male', 'female']
    else
      self.preference
    end
  end

  def match
    self.find_voted_items.select { |user| user.find_voted_items.include?(self)}
  end

  def is_match?(user)
    match.include?(user)
  end

  def toggle_membership
    if self.membership == 'basic'
      self.membership = 'premium'
    else
      self.membership = 'basic'
    end

    self.save
  end

  private
  def set_membership_to_basic
    self.membership ||= "basic"
  end

end
