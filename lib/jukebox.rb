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
#def say_hello(name)
#  "Hi #{name}!"
#end
#puts "Enter your name:"
#user_name =gets.chomp
#puts say_hello(user_name)
def help
    puts  "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |element, index|
   puts "#{index}.#{element}"
 end
end

def play(songs)
 puts "Please enter a song name or number:"
 user_input = gets.chomp
 songs.each_with_index do |selected_song,index|
  if user_input == selected_song
    puts "Playing #{selected_song}"
  elsif user_input.to_i == index+1
    puts "Playing #{selected_song}"
  else
    puts "Invalid input, please try again"
  end
 end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  input=""
  input =gets.chomp

  help
  puts "Please enter a command:"
  if input=="list"
    list|(songs)
  elsif input=="play"
    play(songs)
  elsif input=="help"
    help
  else input="exit"
    exit_jukebox
  end
end
