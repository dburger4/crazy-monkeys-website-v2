class ChangePhoneToString < ActiveRecord::Migration[6.0]
  def change
    change_column :forms, :phone, :string
  end
end
