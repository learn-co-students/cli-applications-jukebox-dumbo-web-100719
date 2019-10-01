# Add your code here
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
puts  "I accept the following commands:"
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
end

def list (new_song)
  new_song.each_with_index do |song, index| 
  puts "#{index+1}. #{song}"
  end
end

def play(new_song)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  if (1..9).to_a.index(input.to_i) != nil 
    puts "Playing #{new_song[input.to_i - 1]}"
  elsif new_song.index(input) != nil
  puts "Playing #{input}"
  else 
    puts "Invalid input, please try again"
  end
end

def prompt
  puts "Please enter a command:"
  gets.chomp
end

def exit_jukebox
  puts "Goodbye"
end

def run(play)
  help
  input = prompt
  
  while input != "exit"
    if input == "list"
      list(new_song)
      input
    elsif input == "play"
      play(new_song)
      input 
    elsif input == "help"
      help
      input 
    end
  end
     exit_jukebox
  end
end
  
