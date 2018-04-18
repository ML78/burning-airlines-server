class SessionController < ApplicationController
  def new
  end

#add session according to user authentication

  def create
    @user = User.find_by :name => params[:name]
    if @user.present?
      session[:user_id] = @user.id
      redirect_to root_path
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
