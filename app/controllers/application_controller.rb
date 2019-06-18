class ApplicationController < ActionController::Base
	before_action :authenticate_user!, except: [:new, :create]
  	protect_from_forgery with: :exception
  	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
		def configure_permitted_parameters
		 	devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :password_confirmation])
		 	devise_parameter_sanitizer.permit(:account_update) do |u|
		      u.permit(:first_name, :email, :last_name, :password, :password_confirmation, :current_password)
		end
	end
end
