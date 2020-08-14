class Form < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
    

  def audition
    Audition.find(audition_id)
  end

  def self.alphabetical_names
    form_names = Form.all.map { |form| form.name }
    form_names.sort!
  end

end
