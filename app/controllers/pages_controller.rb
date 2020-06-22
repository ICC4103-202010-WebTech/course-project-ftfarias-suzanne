class PagesController < ApplicationController
  def home
    if user_signed_in?
    @upcoming_events= Event.joins(event_guests: :user).where(users: {id: current_user.id})
    @user_organizations = Organization.joins(:users).where(users: {id: current_user.id})
    end
  end

  def search
  end
end
