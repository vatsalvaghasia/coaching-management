class CreateTeacherProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :teacher_profiles do |t|
      t.string :name
      t.string :email
      t.float :experience
      t.string :subject
      t.boolean :mode_to_teach , default: false

      t.timestamps
    end
  end
end
