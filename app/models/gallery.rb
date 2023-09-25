class Gallery < ApplicationRecord
  has_one_attached :front_image
  has_one_attached :slider_image_1
  has_one_attached :slider_image_2
  has_one_attached :slider_image_3
  has_many :photos

  validates_presence_of :title, :description
end
