# frozen_string_literal: true

class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= Student.new
      can :read,Course
      can :read,TeacherProfile
      can :read,Paper
    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :teacher
      cannot :manage,Year
      cannot :manage,Month
      cannot :manage,Role1
      cannot :manage,Role
      cannot :manage,Category
      can :read,Course
      can :read,Paper
      can :create,Paper 
      can :read,TeacherProfile   
    elsif user.has_role? :student
      cannot :manage,Year
      cannot :manage,Month
      cannot :manage,Role1
      cannot :manage,Role
      cannot :manage,Category
      cannot :manage,Paper
      can :read, Course
      can :read, TeacherProfile
    end
      can :read,Course
      can :read,TeacherProfile
      can :read,Paper
end
    # Define abilities for the passed in user here. For example:
    #
    #    # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
end
