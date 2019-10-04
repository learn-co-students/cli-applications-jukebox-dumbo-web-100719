# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)

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

def play(songs)
	puts "Please enter a song name or number:"
	user_response = gets.strip
	if user_response.to_i >= 1 && user_response.to_i <= songs.length
		puts "Playing #{songs[user_response.to_i-1]}"
	elsif songs.include?(user_response)
		puts songs.find {|music| music == user_response}
	else
		puts "Invalid input, please try again"
	end
  
end



def list(music)
  music.each_with_index do |music,idx|
    puts "#{idx+1}. #{music}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  while !!(user_input == exit)
    case user_input
      when 'help'
        help
      when 'play'
        play(songs)
      when 'list'
        list(songs)
      else
        run(songs)
    end
  end
  if user_input == 'exit'
    exit_jukebox
  end
end