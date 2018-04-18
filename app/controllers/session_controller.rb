class SessionController < ApplicationController
  def new
  end

#add session according to user authentication

  def create
    @user = User.find_by :name => params[:name]
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:error] = "Error with log-in"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
