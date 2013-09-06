class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :find_user
  before_filter :set_win_value
  before_filter :total_pot
  
  def total_pot
    @total_pot = Team.sum('price')
  end

  def set_win_value
    @win_value = 86.75
  end  
  
  def find_user
    @current_user = User.find_by_id(session[:user_id])
  end
end
