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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if array.include?(input)
    puts "Playing #{input}"
  elsif input.to_i > 0 && input.to_i < array.length+1
    puts "Playing #{array[input.to_i-1]}"
  else 
    puts "Invalid input, please try again" 
  end
end

def list(array)
  puts array
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    input = gets.strip
    case input
    when 'play'
      play(songs)
    when 'help'
      help
    when 'list'
      list(songs)
    when 'exit'
      break
    end
  end
  exit_jukebox
end