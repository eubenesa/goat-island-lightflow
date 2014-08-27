class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    @current_user = User.find_by(uid: auth['uid']) || User.create_with_omniauth(auth)
    session[:user_id] = @current_user.id
    if @current_user.lhl_member
      # redirect_to
    else
      redirect_to :root
    end
  end

  def destroy
    reset_session
    redirect_to :root
  end
end
