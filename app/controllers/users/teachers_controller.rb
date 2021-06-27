class Users::TeachersController < ApplicationController
  before_action :logged_in_user
  def index
    @teachers = Teacher.all
  end

  def logged_in_user
    if !is_student_admin?
      redirect_to errors_page404_path
    end
  end

  def show
  @teacher = Teacher.find(params[:id])
  end

  def destroy
  @teacher = Teacher.find(params[:id])
  @teacher.destroy
    if @teacher.destroy
      redirect_to users_teachers_path, notice: "User Deleted."
    else
      redirect_to users_teachers_path,notice:"User not Deleted"
    end
  end
end
