class RegistrationsController < Devise::RegistrationsController
	protected

	user = @Users
	def after_sign_up_path_for(user)
		@user = user

		'profiles'

	end
end
