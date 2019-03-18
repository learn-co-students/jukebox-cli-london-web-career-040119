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


    
    