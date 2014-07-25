require 'pry'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "q8mWPDTyMwcSfY2zmnHiN31rN"
  config.consumer_secret     = "gfSsz0pbXnTj6yUJU7BISKsCx7tmWGBmmoVFFe5iP0wAAhgjVI"
  config.access_token        = "2397151184-URlJRnSlR0CSsLzhDpnh3PANNwdS6JcRL74zfBw"
  config.access_token_secret = "luafpebIvOFUnQHDXKUnmcW6ZzLxAyZGNI9bvjMJTitJl"
end

binding.pry

client.update("Test tweet")