class StartDateOption < ApplicationRecord
  belongs_to :event
  has_many :votes, dependent: :destroy

  validate :custom_validation_method_with_message

  def custom_validation_method_with_message
    if possiblestartdate.blank?
      errors.add(:_, "can't be blank")
    end
  end


end
