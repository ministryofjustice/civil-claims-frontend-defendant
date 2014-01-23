class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Author::Controller

  def home
    redirect_to defences_path
  end

  def redirect_to_login_page_if_not_signed_in
    unless signed_in?
      redirect_to controller: 'users', action: 'login_screen'
    end
  end
end
