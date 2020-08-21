class AddLivestreamToWelcomeElements < ActiveRecord::Migration[6.0]
  def change
    add_column :welcome_elements, :livestream_id, :string
    add_column :welcome_elements, :show_livestream, :boolean
  end
end
