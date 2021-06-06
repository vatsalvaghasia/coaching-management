class UsersController < ApplicationController
	before_action :logged_in_user
     def logged_in_user
    if !(current_user && current_user.has_role?(:admin))
      redirect_back fallback_location: root_path
    end
  end
  def index	
    if params.has_key?(:role)
      @users = User.with_role params[:role]
    else
    @users = User.all
  end
  end

  def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_url, notice: "User succesfully created!" 
        else
            render :new
        end
    end

  def show
  @user = User.find_by_id(params[:id])
    end
    
 def destroy
    @user = User.find(params[:id])

    if @user.destroy
        redirect_to users_path, notice: "User deleted."
    end
  end
def user_params
  params.require(:user).permit(:email, :password,:password_confirmation)
end
end
