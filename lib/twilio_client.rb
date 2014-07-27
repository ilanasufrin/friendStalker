class TwilioClient
  TWILIO_NUMBER = "+14129064747" # OUR_PHONE_NUMBERS = ["+18602273095", "+14125088025"]

  # def self.send_alert(to:, url:)
  #   return if to = "+00000000000"
  #   if to.present? #&& OUR_PHONE_NUMBERS.include?(to)
  #     puts "="*72
  #     puts "Sending text message to #{to}"
  #     Fennel.twilio.account.messages.create(
  #       body: "The free stuff fairy has found an item for you! Please visit #{url} to accept or deny the offer.",
  #       to: to,
  #       from: TWILIO_NUMBER
  #     )
  #   end
  # end

  # def self.notify_owner(offer, url)
  #   phone_number = offer.owner.phone_number
  #   return if phone_number == "+00000000000"
  #   puts "="*72
  #   puts "Sending text message to #{phone_number}"
  #   Fennel.twilio.account.messages.create(
  #     body: "Someone nearby has accepted your item! Log in to see their contact information. #{url}",
  #     to: phone_number,
  #     from: TWILIO_NUMBER
  #   )
  # end

#read figaro docs to figure out how to hide these
account_sid = 'AC4bb6fa4568260df672cbdb2389684bec'
auth_token = '97ea4ee4c5bfb09c0d3e2bfb36f0e4ef'
# @client = Twilio::REST::Client.new account_sid, auth_token
@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.account.messages.create(:body => "Test text",
:to => "+14125088025",
:from => "+14129064747")
#puts message.to




end
