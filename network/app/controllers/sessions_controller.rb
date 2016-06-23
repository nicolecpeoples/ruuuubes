class SessionsController < ApplicationController
	include SessionsHelper
	def create
		#check if user is in database
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			log_in user 
			flash[:success] = "You have successfully logged in"
			redirect_to professional_profile_path
		else
			flash.now[:danger] = 'Invalid email/password combination'
  			redirect_to main_url
		end
	end

	def destroy
		log_out if logged_in?
  		redirect_to main_url
	end
end
