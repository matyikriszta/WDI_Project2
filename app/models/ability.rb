class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.membership = 'basic'
      can [:index, :show, :search, :dashboard], User
      can [:mark_as_read, :destroy_message, :reply, :conversation, :create_message, :new_message, :all, :outbox, :inbox], Message
    elsif user.membership = 'premium'
      can :manage, :all
    end
  end
end
