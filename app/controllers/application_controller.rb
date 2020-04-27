class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  helper_method :user_signed_in?

  def authorize
    redirect_to new_sessions_path unless current_user
  end

  def user_signed_in?
    return true if session[:user_id] and session[:user_id] == current_user.id and current_user != {}

    false
  end
end
