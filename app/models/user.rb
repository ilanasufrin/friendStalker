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

  def notify
    account_sid = 'AC4bb6fa4568260df672cbdb2389684bec'
  auth_token = '97ea4ee4c5bfb09c0d3e2bfb36f0e4ef'
  # @client = Twilio::REST::Client.new account_sid, auth_token
  @client = Twilio::REST::Client.new account_sid, auth_token
  message = @client.account.messages.create(:body => "Test text",
  :to => "+14125088025",
  :from => "+14129064747")
  end


end
