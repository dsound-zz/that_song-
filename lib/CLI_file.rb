
def welcome
  puts "WHAT'S THAT SONG?"
  puts "1. Enter song title"
  puts "2. Enter media(Film, Tv)"
  puts "3. exit"

end

def user_entry
  entry = gets.chomp.to_i


    if entry == 1
    puts "Enter song title"
    user_input_song = gets.chomp
    song_search(user_input_song)

  elsif
    entry == 2
    puts "Enter moive or tv show"
    media_title = gets.chomp
    puts media_title
  elsif
    entry == 3
    exit_program
  else
    puts "crappy entry bro, try again"
    run_both
    end
  end

  def song_search(user_input_song)
    media_results = media_search(user_input_song)
    soundtrack_check = media_results["results"].select { |result| result["primaryGenreName"] == "Soundtrack" }
     puts soundtrack_check.map { |result| result["collectionName"] }
    
      end









def exit_program
end

def run_both
  welcome
  user_entry
end
