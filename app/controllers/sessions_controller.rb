class SessionsController < ApplicationController
  skip_before_action :authentication_required

  def new
  end

  def create
    @user = User.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid]) || User.create_with_omniauth(auth_hash)
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = auth_hash['extra']['access_token'].consumer.key
      config.consumer_secret     = auth_hash['extra']['access_token'].consumer.secret
      config.access_token        = auth_hash['credentials']['token']
      config.access_token_secret = auth_hash['credentials']['secret']
    end
    binding.pry
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
      # binding.pry
      env['omniauth.auth']
    end

end
