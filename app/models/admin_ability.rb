class AdminAbility
  include CanCan::Ability

  def initialize(user)
    # define admin abilities here ....
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    end
  end
end
