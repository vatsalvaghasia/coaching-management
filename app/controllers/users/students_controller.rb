class Users::StudentsController < ApplicationController

  # before_action :logged_in_user
  def index
    @students = Student.all
  end

  def logged_in_user
    if !is_student_admin? || !is_teacher_admin?
      redirect_to root_path
    end
  end

  def show
  @student = Student.find(params[:id])
  end
end
