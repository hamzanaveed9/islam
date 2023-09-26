class Feedback < ApplicationRecord
  belongs_to :service, optional: true
  belongs_to :about, optional: true
end
