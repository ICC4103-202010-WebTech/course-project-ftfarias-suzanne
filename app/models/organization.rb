class Organization < ApplicationRecord
  belongs_to :organization_administrator
  has_many :events, dependent: :destroy
  has_many :users
  before_destroy :kick_users

  private
  def kick_users
    users=self.users
    users.update_all(organization_id:nil)
  end
end
