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

def list(songs)
	songs.each_with_index do |i,song|
		puts "#{i}. #{song}"
	end
end

def help
	help_cmds = [
		"I accept the following commands:", 
		"- help : displays this", 
		"- list : displays a list of songs you can play", 
		"- play : lets you choose a song to play", 
		"- exit : exits this program"]
	help_cmds.each { |help| puts help } 
end

def play (songs)
	puts "Please enter a song name or number:"
	selection = gets.chomp
	songs.each_with_index do |i,song|
  	if selection == song || selection == 1..songs.length
  		puts "Playing #{songs[i]}"
  	else
  		puts "Invalid input, please try again"
  	end
  end
end

def exit_jukebox
	puts "Goodbye"
end

def run (songs)
	input = ""
	until input=="exit" do
		help
		puts "Please enter a command:"
		input = gets.chomp
		case input
		when "help"
			help
		when "play"
			play(songs)
		when "list"
			list(songs)
		when "exit"
			exit_jukebox
			break
		end		
	end
end
