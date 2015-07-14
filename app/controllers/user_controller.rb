class UserController < ApplicationController

	def new
		@user = User.new
	end

	def profile
		redirect_to user_path(current_user)	
	end

	def create
		user_params = params.require(:user).permit(:name, :email, :password)
		@user = User.new(user_params)
		if @user.save
			login @user
		else
			redirect_to root_path
		end
	end

	def index
		@users = User.all
	end

	private
	def set_user
		@user = current_user
	end

	def user_params
		white_list = [:email, :email_confirmation, :password, :password_confirmation, :name]
		params.require(:user).permit(*white_list)
	end
end
