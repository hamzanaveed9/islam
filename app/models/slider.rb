class Slider < ApplicationRecord
  has_one_attached :background_image
  has_one_attached :logo

  validates :background_image, content_type: ['image/png', 'image/jpg', 'image/jpeg']
  validates :logo, content_type: ['image/png', 'image/jpg', 'image/jpeg']
end
