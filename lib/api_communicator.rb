# require "rest-client"
# require "json"
# require "pry"


def media_search(user_input_song)

  api_string = RestClient.get("https://itunes.apple.com/search?term=#{user_input_song}&entity=song&attribute=movieTerm")
  JSON.parse(api_string)
end
