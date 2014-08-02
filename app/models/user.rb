class User < ActiveRecord::Base
  has_many :friendships
  has_many :friends, through: :friendships

  def self.create_with_omniauth(auth_hash)
    self.create(
      provider: auth_hash[:provider],
      uid: auth_hash[:uid],
      name: auth_hash[:info][:name]
      )
  end

  geocoded_by :ip_address

  after_validation :geocode

  def ip_address
    request.location.ip
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
    :from => "+14129064747")
  end

end