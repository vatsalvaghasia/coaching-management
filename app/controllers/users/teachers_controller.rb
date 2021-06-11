class Users::TeachersController < ApplicationController

  # before_action :logged_in_user
  def edit
    @teacher = Teacher.find_by_id(:id)
  end

  def index
    @teacher = Teacher.all
  end

  def logged_in_user
    if !is_student_admin? || !is_teacher_admin?
      redirect_to root_path
    end
  end
end
