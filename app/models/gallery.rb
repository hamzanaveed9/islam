class Gallery < ApplicationRecord
  has_one_attached :front_image
  has_one_attached :slider_image_1
  has_one_attached :slider_image_2
  has_one_attached :slider_image_3
  has_many :photos
  scope :on_homepage, -> { where(display_on_homepage: true) }

  validates_presence_of :title, :description

  # validate :validate_homepage_limit, if: :display_on_homepage

  # def validate_homepage_limit
  #   if Gallery.on_homepage.count >= 5
  #     errors.add(:base, 'Cannot display more than 6 gallaries on the homepage.')
  #   end
  # end
end
