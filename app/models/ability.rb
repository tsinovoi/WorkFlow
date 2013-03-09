class Ability
  include CanCan::Ability

  def initialize(user)
         user ||= User.new # guest user (not logged in)
        if user.admin? 
          can :manage, :all
        else
        can :manage, Pin do |pin|
            pin.try(:owner) == user
        end
      can :manage, User do |user|
       user.try(:owner) == user
     end
   end
 end
end


