class Gallery < ApplicationRecord
  self.per_page = 9

  has_one_attached :front_image
  has_one_attached :slider_image_1
  has_one_attached :slider_image_2
  has_one_attached :slider_image_3
  has_many_attached :images

  validates_presence_of :title, :description
end
