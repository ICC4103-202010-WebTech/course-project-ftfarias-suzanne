class ApplicationController < ActionController::Base
  before_action :set_user

  private
  def set_user
    @userProfile = UserProfile.first
  end

end
