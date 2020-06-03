class Search < ApplicationRecord
  def users
    @users ||= find_users
  end

  def events
    @events ||= find_events
  end

  def organizations
    @organizations ||= find_organizations
  end

  private
  def find_users
    users = UserProfile.order(:name)
    users = UserProfile.where("name LIKE ? OR username LIKE ?", "%#{keywords}%","%#{keywords}%") if keywords.present?
    users
  end

  def find_events
    events = Event.order(:name)
    events = Event.where("name LIKE ? OR description LIKE ?", "%#{keywords}%","%#{keywords}%") if keywords.present?
    events
  end

  def find_organizations
    organizations = Organization.order(:name)
    organizations = Organization.where("name LIKE ? OR description LIKE ?", "%#{keywords}%","%#{keywords}%") if keywords.present?
    organizations

  end
end
