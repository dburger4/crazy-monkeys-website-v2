class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.datetime :datetime
      t.string :location
      t.string :semester
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
