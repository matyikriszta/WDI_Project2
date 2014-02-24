class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.membership = 'basic'
      can [:index, :show, :search, :dashboard], User
    elsif user.membership = 'premium'
      can :manage, :all
    end
  end
end
