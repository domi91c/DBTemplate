class RegistrationsController < Devise::RegistrationsController

	def new
		# this action is used to show the sign in form
		# you can add your custom code here
	end
	def create
		# this action is triggered when the user sends data to sign up
		# you can add your custom code here
	end


	def destroy
		@user = User.find(current_user.id)
		@user.is_active = 0
		if @user.save
			sign_out @user
			redirect_to root_path
		else
			render "edit"
		end
	end

end
