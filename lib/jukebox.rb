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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def play(playlist)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  if user_response.to_i <= playlist.length && user_response.to_i != 0
    puts playlist[user_response.to_i - 1]
  elsif playlist.any?(user_response)
    puts user_response
  else 
    puts "Invalid input, please try again"
  end
end 

def list(playlist)
  playlist.length.times do |n|
    puts "#{n + 1}. #{playlist[n]}"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(playlist)
  puts "Please enter a command:"
  user_response = gets.strip
  case user_response
  when "help"
    help
  when "exit"
    exit_jukebox
  when "list"
    list(playlist)
  when "play"
    play(playlist)
  end
  while user_response != exit do
    run(playlist)
  end 
end 