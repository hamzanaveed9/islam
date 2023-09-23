class Feedback < ApplicationRecord
  belongs_to :service, optional: true
end
