# require "rest-client"
# require "json"
# require "pry"

def view_api
  api_string = RestClient.get("https://itunes.apple.com/search?term=star+wars&entity=song&attribute=movieTerm")
  api_hash = JSON.parse(api_string)

  end



# binding.pry
# 0
