class PagesController < ApplicationController
  def home
    if user_signed_in?
    @upcoming_events= Event.joins(event_guests: :user).where(users: {id: current_user.id})
    @user_organizations = Organization.joins(:users).where(users: {id: current_user.id})
    end

    @organizations = Organization.all
  end

  def search
  end

  def join_org
    def join(org_id)
      current_user.update_attribute(:organization_id, org_id)
      #If you don't want callbacks or validations use this
      #update_columns(:flag, 1)
    end
  end
end
