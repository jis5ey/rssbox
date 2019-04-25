# frozen_string_literal: true
# https://www.reddit.com/dev/api

class RedditError < HTTPError; end

class Reddit < HTTP
  BASE_URL = "https://www.reddit.com/r"
  HEADERS = {
    "User-Agent" => "web:com.herokuapp.rssboxmyfork:v0.1 (by /u/ano-nimuss)"
  }
  ERROR_CLASS = RedditError
end

error RedditError do |e|
  status 503
  "There was a problem talking to Reddit. Please try again in a moment."
end
