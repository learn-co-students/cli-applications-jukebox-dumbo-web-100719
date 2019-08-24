require "pry"

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

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

def list (songs)
  songs.each_with_index do |item, index| 
    puts "#{index + 1}" + ". " + item
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
   songs.each_with_index do |item, index| 
     if user_input == (index + 1).to_s
       puts "Playing #{item}"
      else if user_input == item
        puts "Playing #{item}"
      else 
        puts "Invalid input, please try again"
      end
    end
    end
 end