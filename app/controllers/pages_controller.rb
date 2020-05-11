class PagesController < ApplicationController
  def home
    @upcoming_events= Event.joins(event_guests: :user).where(users: {id: 1})
    @user_organizations = Organization.joins(:users).where(users: {id: 1})
  end

  def search
  end
end
