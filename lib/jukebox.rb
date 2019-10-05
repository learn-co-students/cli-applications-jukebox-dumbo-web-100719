def help
puts  "I accept the following commands:"
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
end

def play(song_list)
  puts "Please enter a song name or number:"
  selection= gets.chomp.strip

  if selection.to_i>=1 && selection.to_i<=song_list.length
    puts "Playing #{song_list[selection.to_i-1]}"
  elsif song_list.include?(selection)
    puts "Playing #{song_list.find{|song| song==selection}}"
  else
    puts "Invalid input, please try again"
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

def run(song_list)
  while true do
    puts "Please enter a command:"
    selection= gets.chomp.strip
    case selection
    when "play"
      play(song_list)
      break
    when "list"
      list(song_list)
      break
    when "exit"
      exit_jukebox
      break
    when "help"
      help
      break
    else
      puts "Invalid entry"
  end
end

end
