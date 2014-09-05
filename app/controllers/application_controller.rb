class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login_lhl_member

  def require_login_lhl_member
    redirect_to root_path unless current_user && current_user.lhl_member
  end

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :redirect_if_lhl_member

  def redirect_if_lhl_member
    if current_user && current_user.lhl_member
      redirect_to questions_path
    end
  end
end
