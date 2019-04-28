class Auth0Controller < ApplicationController
  def callback
    session[:userinfo] = request.env['omniauth.auth']

    redirect_to '/dashboard'
  end

  def failure
  end

  def logout
    reset_session
    redirect_to root_path
  end
end
