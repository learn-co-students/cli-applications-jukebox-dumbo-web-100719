require 'pry'

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
  input = gets.strip

    if songs.include?(input)
      puts "Playing #{input}"
    elsif (1..9).to_a.include?(input.to_i)
      puts "Playing #{songs[input.to_i - 1]}"
    else
      puts "Invalid input, please try again"
    end
end

def list(songs)
  songs.each_with_index do |songs, index|
    puts "#{index + 1}. #{songs}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_command = gets.strip

  while user_command != "exit" do
    if user_command == "help"
      help
    elsif user_command == "list"
      list(songs)
    elsif user_command == "play"
      play(songs)
    else
      puts "Invalid command, please try again"
    end

    puts "Please enter a command:"
    user_command = gets.strip
  end

  if user_command == "exit"
    exit_jukebox
  end
end
