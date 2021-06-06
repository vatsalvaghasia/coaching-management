class ApplicationController < ActionController::Base
def after_sign_in_path_for(resource)
  if current_user.has_role?(:admin) #Assuming there is such a function
    root_path
  # elsif current_user.has_role?(:teacher)
  #   root_path
  else
    session[:previous_url]|| root_path
  end
end

end
