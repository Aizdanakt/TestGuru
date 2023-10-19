class ApplicationController < ActionController::Base
  helper_method :current_user,
                :logged_in?

  private

  def authenticate_user!
    return if current_user

    cookies[:redirect_url] = request.original_url
    redirect_to login_path, alert: 'Are you a Guru? Verify your Name and Password please'

  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user.present?
  end
end
