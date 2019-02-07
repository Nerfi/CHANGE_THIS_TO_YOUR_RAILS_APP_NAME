class ApplicationController < ActionController::Base
#adding first name and last name to sign_up
   before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  #whitelisting users
  before_action :authenticate_user!
  #protegiendo la app =)
  protect_from_forgery with: :exception

end
