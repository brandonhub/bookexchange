class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #helper mothods
  helper_method :current_user
  
  #extra pages
  def home
  end
  
  def error
  end
  
  def tips
  end
  
  private
  
  #helper for retrieving currently loggen in user (if there is one)
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  #helper for redirecting if no authentication present
  def has_access
    if !current_user
      redirect_to "/error"
      return false;
    end
    return true
  end

end
