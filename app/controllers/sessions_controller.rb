class SessionsController < ApplicationController

  def create
    @user = User.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid]) || User.create_with_omniauth(auth_hash)
    session[:current_user] = @user
    session[:user_id] = @user.id
    redirect_to @user
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  protected
    def auth_hash
      env['omniauth.auth']
    end

end
