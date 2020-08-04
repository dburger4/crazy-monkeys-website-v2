class Form < ApplicationRecord
  belongs_to :user
    

  def audition
    Audition.find(audition_id)
  end
end
