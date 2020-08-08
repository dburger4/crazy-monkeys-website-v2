class AddIndexToForms < ActiveRecord::Migration[6.0]
  def change
    add_index :forms, :audition_id
  end
end
