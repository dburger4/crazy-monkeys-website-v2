class CreateForms < ActiveRecord::Migration[6.0]
  def change
    create_table :forms do |t|
      t.string :name
      t.string :pronouns
      t.integer :phone
      t.string :major
      t.string :graduation
      t.text :absent_semesters
      t.text :experience
      t.text :skills
      t.text :confliects
      t.text :heard_from
      t.belongs_to :user, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
