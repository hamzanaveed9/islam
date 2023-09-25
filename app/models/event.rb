class Event < ApplicationRecord
  EVENT_TYPES = ['Families', 'Young', 'Adults', 'Ladies Only']

  has_one_attached :image

  before_validation :sanitize_event_types
  validate :at_least_one_event_type_selected

  private

  def sanitize_event_types
    self.event_types = event_types.reject(&:blank?)&.uniq
  end

  def at_least_one_event_type_selected
    if event_types.blank? || event_types.all?(&:blank?)
      errors.add(:event_types, "must have at least one option selected")
    end
  end
end
