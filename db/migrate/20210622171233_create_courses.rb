class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :c_name
      t.string :c_desc
      t.string :c_level
      t.string :c_structure
      t.boolean :c_mode ,default:false
      t.string :c_location
      t.integer :c_duration
      t.string :c_days
      t.string :c_time
      t.integer :c_age
      t.string :c_detailed_structure
      t.string :c_requirements

      t.timestamps
    end
  end
end
