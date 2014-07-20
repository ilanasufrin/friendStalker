

# check out this doc: https://developers.facebook.com/docs/graph-api/reference/v2.0/place_tag/
/* make the API call */
FB.api(
    "/{place-tag-id}",
    function (response) {
      if (response && !response.error) {
        /* handle the result */
      }
    }
);



# get a user's tagged places: https://developers.facebook.com/docs/graph-api/reference/v2.0/user/tagged_places/
/* make the API call */
FB.api(
    "/me/tagged_places",
    function (response) {
      if (response && !response.error) {
        /* handle the result */
      }
    }
);


# get a user's friends: https://developers.facebook.com/docs/graph-api/reference/v2.0/user/friends#readmodifiers
/* make the API call */
FB.api(
    "/me/friends",
    function (response) {
      if (response && !response.error) {
        /* handle the result */
      }
    }
);


# if they are friends, return the friend user to see their location
/* make the API call */
FB.api(
    "/{user-id-a}/friends/{user-id-b}",
    function (response) {
      if (response && !response.error) {
        /* handle the result */
      }
    }
);



