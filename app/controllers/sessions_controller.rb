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
    @user = User.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid]) || User.create_with_omniauth(auth_hash)
    session[:user_id] = @user.id
    session[:current_user] = @user
    client.friends.attrs[:users].each do |friend|
      unless Friend.find_by(twitter_id: friend[:id]).friendships.find_by(user_id: @user.id)
        f = Friend.new
        f.twitter_id = friend[:id] 
        f.name = friend[:name]
        f.geo_enabled = friend[:geo_enabled]
        f.friendships.build(user_id: @user.id)
        f.pic = friend[:profile_image_url]
        if friend[:status][:geo]
          f.location = Geocoder.search(friend[:status][:geo][:coordinates].join(',')).first.data['formatted_address']
          f.latitude = friend[:status][:geo][:coordinates].first
          f.longitude = friend[:status][:geo][:coordinates].last
        else
          f.location = friend[:location]
        end
        f.save
      end
    end
    render 'users/show'
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
