class SessionsController < ApplicationController
	def new
		@user = User.new
	end

	def create
		user_params = params.require(:user).permit(:email, :password)
		@user = User.confirm(user_params)
		if @user
			login(@user)
			redirect to root_path
		else
			redirect to root_path
		end
	end

	def destroy
		logout
	end

	private
	def login_params
		user = params.require(:user)
		[user[:email], user[:password]]
	end
	
end
