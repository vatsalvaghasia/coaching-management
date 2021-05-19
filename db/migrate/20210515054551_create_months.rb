class CreateMonths < ActiveRecord::Migration[6.1]
  def change
    create_table :months do |t|
      t.string :month_name
      t.integer :month_number

      t.timestamps
    end
  end
end
