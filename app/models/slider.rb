class Slider < ApplicationRecord
  has_one_attached :background_image
  has_one_attached :logo

  before_save :check_existing_entries

  private

  def check_existing_entries
    if Slider.count >= 3
      errors.add(:base, 'Only three Slider entries are allowed')
      throw(:abort)
    end
  end
end
