class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :find_user
  before_filter :set_win_value
  
  def set_win_value
    @win_value = 100
  end  
  
  def find_user
    @current_user = User.find_by_id(session[:user_id])
  end
end
