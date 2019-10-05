def help
puts  "I accept the following commands:"
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
end

def play(song_list)
  puts "Please enter a song name or number:"
  selection= gets.strip

  song_list.each_with_index do |song,index|
    if selection.to_s==song || selection.to_i==index+1
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
      #play(song_list)
    
  end
end

def list(song_list)
  song_list.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
end
