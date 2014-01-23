class UsersController < ApplicationController

  def login_screen
    render 'login'
  end

  def create_session
    author = Author::Proxy.new(Rails.application.config.auth_client)

    begin
      if author.login(params[:email], params[:password])
        write_secure_token author.session
      else
        flash_alert "Authentication failed."
      end
    rescue Errno::ECONNREFUSED => e
      flash_alert "Auth service not responding."
    end

    redirect_to defence_path(id: 'about_the_case')
  end

  def logout
    reset_session
    redirect_to controller: 'users', action: 'login_screen'
  end
end
