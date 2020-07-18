class AddEmailToFormsRenameConflicts < ActiveRecord::Migration[6.0]
  def change
    add_column :forms, :email, :string
    rename_column :forms, :conflicts, :availability
  end
end
