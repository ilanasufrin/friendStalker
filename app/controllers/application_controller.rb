class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authentication_required

  def remote_ip
    if request.remote_ip == '127.0.0.1'
      # Hard coded remote address
      '108.41.22.45'
    else
      request.remote_ip
    end
  end


  private
    def authentication_required
      redirect_to login_path if !logged_in?
    end

    def logged_in?
      !!current_user
    end
    helper_method :logged_in?

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
end
