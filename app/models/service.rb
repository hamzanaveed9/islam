class Service < ApplicationRecord
  has_one_attached :logo
  has_one_attached :front_image
  has_many :feedbacks
  scope :on_homepage, -> { where(display_on_homepage: true) }
  validate :validate_homepage_limit, if: :display_on_homepage

  def validate_homepage_limit
    if Service.on_homepage.count >= 6
      errors.add(:base, 'Cannot display more than 6 services on the homepage.')
    end
  end
end
