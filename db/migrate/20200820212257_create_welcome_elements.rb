class CreateWelcomeElements < ActiveRecord::Migration[6.0]
  def change
    create_table :welcome_elements do |t|
      t.string :title
      t.text :description
      t.boolean :show_image
      t.boolean :show_title
      t.boolean :show_description

      t.timestamps
    end
  end
end
