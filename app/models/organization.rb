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
  before_destroy :update_org_admin_destroy
  after_create :update_org_admin_create


  private
  def kick_users
    users=self.users
    users.update_all(organization_id:nil)
  end

  def update_org_admin_create
    organization_administrator.update(organization_id:id)
    organization_administrator.user.update(organization_id:id)
  end

  def update_org_admin_destroy
    organization_administrator.update(organization_id:nil)
  end
end
