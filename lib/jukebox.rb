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

def list(song)
	song.each_with_index{|item, index| "#{index+1}. #{item}"}
end 

def play(song)
  puts "Please enter a song name or number"
  song_playing = gets.chomp 
  
  song.each do |item|
    
        if song_playing == item 
          puts "Playing #{song_playing}"
        else 
          puts "Invalid input, please try again"
        end 
    end 
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  # help

  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
    
    