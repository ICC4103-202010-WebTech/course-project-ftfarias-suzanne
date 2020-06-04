class Organization < ApplicationRecord
  belongs_to :organization_administrator
  has_many :events, dependent: :destroy
  has_many :users
  before_destroy :kick_users

  has_one_attached :banner_picture
  has_one_attached :org_picture
  has_many_attached :pdf
  has_many_attached :pictures
  has_many_attached :videos


  validates :description, :name, presence: true

  private
  def kick_users
    users=self.users
    users.update_all(organization_id:nil)
  end
end
