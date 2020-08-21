class CreateShowsElements < ActiveRecord::Migration[6.0]
  def change
    create_table :shows_elements do |t|
      t.string :title, default: "Next show:"
      t.text :description
      t.boolean :show_title
      t.boolean :show_description
      t.boolean :show_image, default: true

      t.timestamps
    end
  end
end
