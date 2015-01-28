class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  protect_from_forgery with: :exception

  before_filter :set_layout

	def after_sign_in_path_for(user)
		if user.profile.blank?
			new_profile_path
		else
			profile_path(user.profile)
		end
	end

	def set_layout
		if user_signed_in?
			self.class.layout @current_user.role.name
		end
	end
end
