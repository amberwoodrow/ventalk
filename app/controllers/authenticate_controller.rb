class AuthenticateController < ApplicationController
	def register
		@user = User.new
	end

	def do_register
		@user = User.new(user_params)
		if @user.save
  		session[:user_id] = @user.id
			redirect_to profile_path
		else
			render :signin
		end
	end

	def signin
		@user = User.new
	end

	def do_signin
    @user = User.find_by(email: params[:user][:email])
  	if @user.authenticate(params[:user][:password])
  		session[:user_id] = @user.id
			redirect_to profile_path
	  else
		  render :signin
		end
	end
end