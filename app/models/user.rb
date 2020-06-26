class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_one :event_creator, dependent: :destroy
  has_one :organization_administrator,dependent: :destroy
  has_one :mailbox, dependent: :destroy
  belongs_to :organization, optional: true
  has_many :event_guests, dependent: :destroy
  has_many :messages, dependent: :destroy

  validates :email, presence: true, uniqueness: true , format: {with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  has_one_attached :avatar

  validates :name, :lastname,:address,:bio,:username,:phone ,presence: true

  after_create :create_mailbox
  after_create :create_event_creator
  after_create :create_organization_administrator

  private
  #Function to create the user mailbox automatically
  def create_mailbox
    Mailbox.create(user_id: self.id)
  end

  def create_event_creator
    EventCreator.create(user_id: self.id)
  end

  def create_organization_administrator
    OrganizationAdministrator.create(user_id: self.id)
  end

end
