class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :form, dependent: :destroy

  validates :email, format: { with: /@purdue.edu/, message: "must be a valid Purdue email" }

  scope :form, -> { Form.find_by(user_id: id) }
end
