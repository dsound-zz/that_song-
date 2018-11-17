
def welcome
  puts
  puts "WHAT'S THAT SONG?"
  puts
  puts "1. Enter song title"
  puts
  puts "2. Enter media(Film, Tv)"
  puts
  puts "3. exit"
  puts

end

def user_entry
  entry = gets.chomp.to_i


  if entry == 1
    puts
    puts "Enter song title"
    puts
    user_input_song = gets.chomp
    song = Song.find_or_create_by(title: user_input_song)

    song_search(user_input_song, song)

  elsif
    entry == 2
    puts
    puts "Enter movie or tv show"
    puts
    media_title = gets.chomp
    # media = Media.find_or_create_by(title: media_title)
    media_song_match(media_title)
  elsif
    entry == 3
    exit_program
  else
    puts ""
    puts "C'mon, man!! Enter a number from the list!"
    run_both
  end
end

def song_search(user_input_song, song)
  media_results = media_search(user_input_song)

  soundtrack_check = media_results["results"].select { |result| result["primaryGenreName"] == "Soundtrack" }
  soundtrack_check.each do |track|
    media = Media.find_or_create_by(title: track["collectionName"])
    media.songs << song
  end
  puts
  puts
  puts soundtrack_check.map { |result| result["collectionName"] }
  run_both
end

def media_song_match(media_title)
  # found_media = Media.find_by {|media| media.title == media_title}
    # found_media = Media.find_by(title: media_title)
    puts "Here some results for you!"
    puts "-----------------------------"
    puts
    # found_media = Media.where("title LIKE ?", "%#{media_title}%")
    found_media = Media.all.find do |media|
      media.title.downcase.include?(media_title.downcase)

    end


  media_songs = found_media.songs.uniq
  puts "Here some results for you!"
  puts "-----------------------------"
  puts
  media_songs.each { |song| puts song.title.capitalize}
  # puts song_results["results"].map { |result| result["artistName"] }
  puts
  run_both
end


def exit_program
end

def run_both
  # system("clear")
  welcome
  user_entry
end
