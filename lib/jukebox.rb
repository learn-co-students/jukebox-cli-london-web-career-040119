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
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(array)
    array.each_with_index.map do |song, number|
        puts "#{number + 1}. #{song}"
    end
end

def play(array)
    puts "Please enter a song name or number:"
    choice = gets.chomp
    if (1..9).to_a.include?(choice.to_i)
        puts "Playing #{array[choice.to_i - 1]}"
    elsif array.include?(choice)
        puts "Playing #{choice}"
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(array)
    help
    command = ""
    while command
        puts "Please enter a command:"
        command = gets.chomp.downcase
        if command == "help"
            help
        elsif command == "play"
            play(array)
        elsif command == "list"
            list(array)
            play(array)
        elsif command == "exit"
            exit_jukebox
            break
        else
            help
        end
    end
end
