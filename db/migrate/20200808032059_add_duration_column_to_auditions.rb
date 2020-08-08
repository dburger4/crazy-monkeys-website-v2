class AddDurationColumnToAuditions < ActiveRecord::Migration[6.0]
  def change
    add_column :auditions, :duration_in_minutes, :integer
  end
end
