class Slider < ApplicationRecord
  has_one_attached :background_image
  has_one_attached :logo

  validates :background_image, presence: true
end
