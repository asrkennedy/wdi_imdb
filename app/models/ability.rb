class Ability

  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? 'admin'
      can :manage, :all
    else
      can :read, :all
      can :create, User
      can :search, :all
    end
  end

end