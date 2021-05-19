class CreatePapers < ActiveRecord::Migration[6.1]
  def change
    create_table :papers do |t|
      t.string :title
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.references :month, null: false, foreign_key: true
      t.references :year, null: false, foreign_key: true

      t.timestamps
    end
  end
end
