class AddNotesAndDecisionColumnsToForm < ActiveRecord::Migration[6.0]
  def change
    add_column :forms, :notes, :text
    add_column :forms, :decision, :integer, default: 0
  end
end
