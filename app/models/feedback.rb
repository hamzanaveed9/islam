class Feedback < ApplicationRecord
  belongs_to :service, optional: true
  belongs_to :about, optional: true
  validates :name, :email, :subject, :message, presence: true
end
