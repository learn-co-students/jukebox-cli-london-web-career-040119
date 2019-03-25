require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)

  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end

end

def play(songs)

  puts "Please enter a song name or number:"

  users_input = gets.chomp
  songs_numbers = (1..songs.length).to_a

  if songs.include?(users_input)
    song_name = users_input
    puts "Playing #{song_name}"
  elsif songs_numbers.include?(users_input.to_i)
    song_name = users_input.to_i
    puts "Playing #{songs[users_input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  user_input = ""

  puts "Please enter a command:"
  user_input = gets.downcase.chomp

  if user_input == "list"
    list(songs)
  elsif user_input == "play"
    play(songs)
  elsif user_input == "help"
    help
  elsif user_input == "exit"
    exit_jukebox
  end

end
