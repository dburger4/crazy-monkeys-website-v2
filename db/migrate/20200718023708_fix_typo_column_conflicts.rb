class FixTypoColumnConflicts < ActiveRecord::Migration[6.0]
  def change
    rename_column :forms, :confliects, :conflicts
  end
end
