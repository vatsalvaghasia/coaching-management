class CreateYears < ActiveRecord::Migration[6.1]
  def change
    create_table :years do |t|
      t.integer :paper_year

      t.timestamps
    end
  end
end
