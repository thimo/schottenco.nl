class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      # can :read, :all
      unless user.id.nil?
        can :read, Registration, :user_id => user.id
      end
      can :create, Registration
      can :create, Contact

      can :read, ContentPage
      can :read, ContentNewsItem
      can :read, ContentNewsletter
      can :read, ContentBlog
      can :read, AgendaItem
    end
  end
end
