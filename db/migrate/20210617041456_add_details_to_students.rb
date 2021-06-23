class AddDetailsToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :student_name, :string
    add_column :students, :phone, :string
  end
end
