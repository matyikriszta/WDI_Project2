class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new
      if user.membership == 'premium'
        can :manage, :all
      elsif user.membership == 'basic'
        cannot :manage, ActsAsMessageable
        can :manage, User
      end

  end
end
