class SessionsController < ApplicationController
  skip_before_action :require_login_lhl_member, only: [:create]

  before_action :redirect_if_lhl_member, except: [:destroy]

  def create
    auth = request.env['omniauth.auth']
    @current_user = User.find_by(uid: auth['uid']) || User.create_with_omniauth(auth)
    session[:user_id] = @current_user.id
    if @current_user.lhl_member
      redirect_to questions_path
    else
      redirect_to root_path
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
