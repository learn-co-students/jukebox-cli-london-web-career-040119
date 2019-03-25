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
  binding.pry
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list

  songs.each_with_index do |index, song|
    puts "#{index + 1}. #{song}"
  end

end

def play(songs)

  puts "Please enter a song name or number:"
  users_input = gets.chomp
  binding.pry

  songs_numbers = (1..songs.length).to_a

  if songs_numbers.include?(users_input)
    binding.pry
  end

end

def exit_jukebox
  puts "Goodbye"
end
