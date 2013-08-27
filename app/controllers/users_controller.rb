class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    @user.save
    if @user.save
      flash[:notice] = "New User Created"
      redirect_to root_url
    else
      flash[:alert] = "Something went wrong"
      render :new
    end  
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    @user.save
    if @user.save
      flash[:notice] = "User profile updated"
      redirect_to user_path
    else
      flash[:alert] = "Something went wrong, profile not updated"
      render :edit
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
end
