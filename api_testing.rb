require "rest-client"
require "json"
require "pry"

def view_api
  api_string = RestClient.get("https://itunes.apple.com/search?term=jack+johnson&entity=allArtist&attribute=movieArtistTerm")
  api_hash = JSON.parse(api_string)
  # api_hash.has_key?("movies")

  end


binding.pry
0
