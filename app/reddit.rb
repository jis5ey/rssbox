# frozen_string_literal: true
# https://www.reddit.com/dev/api

class RedditError < HTTPError; end

class Reddit < HTTP
  BASE_URL = "https://www.reddit.com/r"
  ERROR_CLASS = RedditError
end

error MixcloudError do |e|
  status 503
  "There was a problem talking to Mixcloud. Please try again in a moment."
end
