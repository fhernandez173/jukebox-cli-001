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
  puts "I accept the following commands: \n
- help : displays this help message \n
- list : displays a list of songs you can play \n
- play : lets you choose a song to play \n
- exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  songs.each_with_index do |song, index|
    # filename = song
    if (user_response == song)
      puts song
    elsif user_response.to_i.is_a?(Integer) && user_response.to_i != 0
      if songs[user_response.to_i - 1] != nil
        puts song
      else
        puts "Invalid input, please try again"
        # user_response = gets.chomp
      end
    else
      puts "Invalid input, please try again"
      # user_response = gets.chomp
    end
  end
end

# play(songs)

def list(songs)
  puts songs
end

def exit_jukebox
  puts "Goodbye"
end

def run(song)
  puts "Please enter a command:\n"
  help
  play(song)
  list(song)
  exit_jukebox
end
