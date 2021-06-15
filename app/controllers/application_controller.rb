class ApplicationController < ActionController::Base

def after_sign_in_path_for(resource)
  if is_teacher_admin? || is_student_admin? #Assuming there is such a function
    root_path
  # elsif current_user.has_role?(:teacher)
  #   root_path
  else
    session[:previous_url]|| root_path
  end
end
def after_sign_in_path_for(resource1)
  if is_teacher_admin? || is_student_admin? #Assuming there is such a function
    root_path
  # elsif current_user.has_role?(:teacher)
  #   root_path
  else
    session[:previous_url]|| root_path
  end
end

def is_teacher?
	current_teacher.has_role?(:teacher)
end

def is_student?
	current_student.has_role?(:student)
end

def is_teacher_admin?
		current_teacher && current_teacher.has_role?(:admin)
end

def is_student_admin?
		current_student && current_student.has_role?(:admin)
	end

def student_show
  @student = Student.find(params[:id])
  end
end
