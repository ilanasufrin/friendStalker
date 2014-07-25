class SessionsController < ApplicationController
  skip_before_action :authentication_required

  def new
  end

  def create
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = auth_hash['extra']['access_token'].consumer.key
      config.consumer_secret     = auth_hash['extra']['access_token'].consumer.secret
      config.access_token        = auth_hash['credentials']['token']
      config.access_token_secret = auth_hash['credentials']['secret']
    end

    geo_friends = client.friends.attrs[:users].select do |friend|
      friend[:status][:geo] != nil || friend[:status][:coordinates] != nil
    end

    geo_friends.each do |geo_friend|
       puts "#{geo_friend[:name]} last checked in at #{Geocoder.search(geo_friend[:status][:geo][:coordinates].join(',')).first.data['formatted_address']}!"
    end
    
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
      # binding.pry
      env['omniauth.auth']
    end

end
