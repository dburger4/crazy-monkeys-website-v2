class AddDefaultsToWelcomeElements < ActiveRecord::Migration[6.0]
  def change
    change_column_default :welcome_elements, :title, 'The Crazy Monkeys'
    change_column_default :welcome_elements, :description, 'We are Purdue\'s Premiere Improv Comedy Group'
    change_column_default :welcome_elements, :show_image, false
    change_column_default :welcome_elements, :show_title, true
    change_column_default :welcome_elements, :show_description, true
  end
end
