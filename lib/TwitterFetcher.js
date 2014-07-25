// https://dev.twitter.com/docs/api/1.1/get/geo/reverse_geocode

// Given a latitude and a longitude, searches for up to 20 places that can be used as a place_id when updating a status.

// This request is an informative call and will deliver generalized results about geography.






// https://dev.twitter.com/docs/api/1.1/get/users/show
//returns the location of the user's most recent tweet


// we'll be searching by location. we should get the friends near that location




// https://dev.twitter.com/docs/api/1.1/get/geo/id/%3Aplace_id
//here's how to get all the info about a location

//conceptually we'll get a user's location from their app account
//then we'll search all of the user's 10 friends to see if they checked in near
//location



var API_KEY = "q8mWPDTyMwcSfY2zmnHiN31rN";
 
var API_SECRET = "gfSsz0pbXnTj6yUJU7BISKsCx7tmWGBmmoVFFe5iP0wAAhgjVI"


var URL = "https://api.twitter.com/1.1/geo/search.json?query=Toronto";

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "q8mWPDTyMwcSfY2zmnHiN31rN"
  config.consumer_secret     = "gfSsz0pbXnTj6yUJU7BISKsCx7tmWGBmmoVFFe5iP0wAAhgjVI"
  config.access_token        = "2397151184-URlJRnSlR0CSsLzhDpnh3PANNwdS6JcRL74zfBw"
  config.access_token_secret = "luafpebIvOFUnQHDXKUnmcW6ZzLxAyZGNI9bvjMJTitJl"
end

client.update("Test tweet")
 
// var info = jQuery.ajax({
//   dataType: "jsonp",
//   url: URL,
//   success : function(response) {
//     jsonData = response.hourly_forecast;
//     console.log(jsonData);


//     $(jsonData).each(function(index) {
//     hour.push(this["FCTTIME"]["hour"]);
//     temp.push(this["temp"]["english"]);
    
//   });
//     console.log(hour);
//     console.log(temp);


