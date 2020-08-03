class AddIndexToForms < ActiveRecord::Migration[6.0]
  def change
    add_index :forms, :auditions_id
  end
end
