class Form < ApplicationRecord
  belongs_to :user, dependent: :destroy
    

  def audition
    Audition.find(audition_id)
  end
end
