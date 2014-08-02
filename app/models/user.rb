class User < ActiveRecord::Base
  after_validation :geocode
  geocoded_by :ip_address,
    latitude: :lat, longitude: :lon
  
  has_many :friendships
  has_many :friends, through: :friendships

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
      :body => "Your friend #{friend} just checked in at #{location}. -THE FRIENDSTALKER",
      :to => "#{to}",
      :from => "+14129064747"
    )
  end

  def find_friends_within_range
    lat = self.lat
    lng = self.lon
    Friend.near([lat, lng], 5) #.select do |friend|
      #can change Friends table to Subscription once we have it
# nearbys = Place.near("Omaha, NE", 50,
#   :order => "distance")

end