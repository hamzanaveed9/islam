class About < ApplicationRecord
  has_many_attached :images
  has_many :feedbacks

  before_create :check_existing_entry

  private

  def check_existing_entry
    if About.exists?
      errors.add(:base, 'Only one About entry is allowed')
      throw(:abort)
    end
  end
end
