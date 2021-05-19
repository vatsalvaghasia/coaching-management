class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :display_in_navbar

      t.timestamps
    end
  end
end
