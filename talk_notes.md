Talk notes - Who's Around

The Problem

- wanted a way to find out where your friends are at a glance (and possibly get notifications when they're near you)
- log in with twitter, see where the people you're following are
- (maybe) get texts if they're within a certain radius of you

Backend

- friends, users, friendships models
  - 'watching' a boolean in friendship model
- using twitter api
  - code snippet and explanation of how we use it
  - getting more than the 20 limited friends
  - problem: only getting 20 friends
  - problem: rate limiting in api requests
- using geocoder for location
  - code snippet and explanation of how we use it
  - get user's location by reverse-geocoding by ip
  - get friends' location by looking at location data of their last tweet if location is enabled
- (if in) using twilio
  - code snippet and explanation of how we use it
- (if in) using whenever for cron
  - code snippet and explanation of how we use it
- (if in) ajax for following/follow buttons on main page
  - code snippet and explanation of how we use it

Next Steps

- choose from among all twitter friends
- add facebook sign-in




