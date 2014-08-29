class WelcomeController < ApplicationController
  skip_before_action :require_login_lhl_member, only: [:index]

  before_action :redirect_if_lhl_member
end
