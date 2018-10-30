class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user && user.authenticate(params[:session][:password])
      log_in user
      remember user
      if user.admin
        redirect_to admin_root_path
      else
        redirect_to user
      end
    else
      flash.now[:danger] = "Invalid email/password combination"
      render "new"
    end
  end

end
