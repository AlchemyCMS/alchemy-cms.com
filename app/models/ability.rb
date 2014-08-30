class Ability
  include CanCan::Ability

  def initialize(user)
    if !user.blank? && user.is_admin?
      can :manage, Extension
      can :manage, :admin_extensions
      can :manage, Showcase
      can :manage, :admin_showcases
    end
  end

end