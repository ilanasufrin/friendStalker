class TwilioClient
  TWILIO_NUMBER = "+14129064747" # OUR_PHONE_NUMBERS = ["+18602273095", "+14125088025"]

  

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
