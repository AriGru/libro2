class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  include PublicActivity::StoreController


  protect_from_forgery with: :exception

  helper_method :current_user
  hide_action :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) #wont go into the database if we have the correct user
  end

  def require_logged_in
    return true if current_user

    redirect_to root_path
    return false
  end
end
