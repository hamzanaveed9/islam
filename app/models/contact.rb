class Contact < ApplicationRecord
  before_save :check_existing_entries

  private

  def check_existing_entries
    if Contact.count >= 3
      errors.add(:base, 'Only three Contact entries are allowed')
      throw(:abort)
    end
  end
end
