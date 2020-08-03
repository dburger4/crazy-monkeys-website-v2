class CreateAuditions < ActiveRecord::Migration[6.0]
  def change
    create_table :auditions do |t|
      t.string :location
      t.datetime :datetime
      t.string :semester
      t.boolean :active

      t.timestamps
    end

  end
end
