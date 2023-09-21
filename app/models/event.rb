class Event < ApplicationRecord
  EVENT_TYPES = ['Families', 'Young', 'Adults']

  has_one_attached :image
end
