class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def user_params
		params.require(:user).permit(:id, :email, :username, :password, :is_admin)
	end
end
