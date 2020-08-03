class AddAuditionForeignKeyToForm < ActiveRecord::Migration[6.0]
  def change
    add_column :forms, :audition_id, :integer
  end
end
