class Users::StudentsController < ApplicationController
  before_action :logged_in_user
  def index
    @students = Student.all
  end

  def logged_in_user
    if !is_student_admin?
      redirect_to errors_page404_path
    end
  end

  def show
  @student = Student.find(params[:id])
  end

  def destroy
  @student = Student.find(params[:id])
  @student.destroy
    if @student.destroy
      redirect_to users_students_path, notice: "User Deleted."
    else
      redirect_to users_students_path,notice:"User not Deleted"
    end
  end
end
