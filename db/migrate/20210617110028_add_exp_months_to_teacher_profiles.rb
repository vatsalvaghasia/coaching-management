class AddExpMonthsToTeacherProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :teacher_profiles, :exp_months, :integer, default: 0
  end
end
