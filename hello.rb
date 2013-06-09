require 'pp'
=begin
class with an initialize
def File.open
def add game
def sub game
def rename game
array of board games
rand generator
=end

file_board_games = File.read('list_of_board_games.txt').split(',').sort# { |word| word.split(',')}

array_of_games = file_board_games.map do |word|
	word.gsub(/^'|'$/, '')
end

puts
number_in_list = array_of_games.length
puts number_in_list

rand_game = rand(number_in_list)

puts rand_game
game_to_play = nil

array_of_games.each_index do |array_index|
	game_to_play = array_of_games[rand_game] if array_index == rand_game
end

puts "The game to play is: " + game_to_play.to_s


# puts "Do you have a new game to put in?"
# puts "Type 'yes' or 'no'"
# response = gets.chomp.downcase
# 	if response == 'yes'
# 		puts "Enter new board game: "
# 		new_game = gets.chomp
# 		array_of_games << new_game
# 		print array_of_games.sort
# 	elsif response == 'no'
# 			return false
# 	else
# 		puts "Type 'yes' or 'no'"
# 		return true
# 	end




