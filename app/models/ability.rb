# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    if user.present? and user.class.name == "User"
      can :read, User
      can :manage, User, id: user.id

      can :read, Event
      can :manage, Event, event_creator_id: user.id

      can :read, Organization
      can :manage, Organization, organization_administrator_id: user.id

    else
      can :manage, :all
    end
    end
  end

