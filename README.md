# Hot Links

## Setup

HotLinks can be set up easily.

1. Clone done this repo.
2. Bundle
3. rake db:setup
4. To run the test suite, rspec

#### Using the app

HotLinks is a companion app to URLockbox, https://dry-caverns-43653.herokuapp.com/, which allows users to create links and mark them as read or unread.

#### API

GET /api/v1/links

  Response: [{ "url":"http://doordonot.com" }]

  Returns the top 10 links (most popular in the past 24 hours)

POST /api/v1/links

  Request: link: { url: "http://google.com" }
  Response: 201
