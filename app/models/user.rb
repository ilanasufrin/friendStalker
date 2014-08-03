class User < ActiveRecord::Base
  after_validation :geocode
  geocoded_by :ip_address,
    latitude: :lat, longitude: :lon
  
  has_many :friendships
  has_many :friends, through: :friendships

  accepts_nested_attributes_for :friendships
  

  def self.create_with_omniauth(auth_hash)
    self.create(
      provider: auth_hash[:provider],
      uid: auth_hash[:uid],
      name: auth_hash[:info][:name]
    )
  end

  # Ben's number : "+15038942566"
  # Ilana's number : "+14125088025"
  # Emily's number : "+18456416152"

  def notify(to, friend, location)
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.messages.create(
      :body => "Your friend #{friend} just checked in at #{location}! (via Who'sAround)",
      :to => "#{to}",
      :from => "+14129064747"
    )
  end

  def find_friends_within_range
    lat = self.lat
    lng = self.lon
    friends_in_range = Friend.near([lat, lng], 100).select do |friend|
      friend if friend.friendships.detect {|f| f.user_id == self.id && f.stalking == true}
    end
  end

  def send_text_updates
    if self.phone != nil || self.phone != ""
      find_friends_within_range.each do |f|
        self.notify(self.phone, f.name, f.location)
      end
    end
  end



end
