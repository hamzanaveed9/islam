class Service < ApplicationRecord
  has_one_attached :logo
  has_many :feedbacks
end
