class SessionsController < ApplicationController
  skip_before_filter :authenticate
  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to root_path, :notice => "Logged in successfully"
    else
      flash.now[:alert] = "Invalid login/password combination"
      render :action => 'new'
    end
  end
  def destroy
    reset_session
    redirect_to root_path, :notice => "You successfully logged out"
  end

  def authenticate
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, :notice => "Please log in"
    end
  end
end
