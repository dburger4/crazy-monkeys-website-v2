class AddIntegerColumnToDecisions < ActiveRecord::Migration[6.0]
  def change
    add_column :decisions, :int_option, :integer
  end
end
