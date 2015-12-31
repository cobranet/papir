class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :set_locale
 
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]

#     if request.env['HTTP_USER_AGENT'].include?("Firefox")
#       @current_user = User.find(1)
#     else
#       @current_user = User.find(3)
#     end

  end
  helper_method :current_user

  protect_from_forgery with: :exception
end
