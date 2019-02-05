class ApplicationController < ActionController::Base
  #protegiendo la app =)
  protect_from_forgery with: :exception

end
