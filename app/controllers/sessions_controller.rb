class SessionsController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by_login(params[:login])
    if user
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        flash[:notice] = "Welcome, #{user.login}"
        redirect_to root_path
      else
        flash[:alert] = "Wrong password"
        render :new
      end
    else
      flash[:alert] = "Unknown Login"
      render :new    
    end
  end  
  
  def destroy
    reset_session
    flash[:notice] = "Bye Bye"
    redirect_to root_path
  end

end