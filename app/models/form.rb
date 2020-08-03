class Form < ApplicationRecord
    belongs_to :user, dependent: :destroy
    
end
