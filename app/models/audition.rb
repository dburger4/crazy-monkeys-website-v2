class Audition < ApplicationRecord
  scope :active, -> { where(active: true) }

  def num_forms
    Form.where(audition_id: id).count
  end
end
