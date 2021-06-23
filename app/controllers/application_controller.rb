class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Permit the `subscribe_newsletter` parameter along with the other
    # sign up parameters.
    devise_parameter_sanitizer.permit(:sign_up, keys: [:student_name,:phone])
  end
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

def current_ability
  if current_student
  @current_ability ||= Ability.new(current_student)
  elsif current_teacher
  @current_ability ||= Ability.new(current_teacher)
  else 
  @current_ability ||= Ability.new(current_student) 
  end
end

rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.errors_page404_path, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end
end
