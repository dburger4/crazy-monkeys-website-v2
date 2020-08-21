class Show < ApplicationRecord
  scope :active, -> { where(active: true) }
end
