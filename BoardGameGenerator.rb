require 'pp'
=begin
*def File.open
*def add game
def sub game
def rename game
*array of board games
*rand generator
=end
class Persistance
  def initialize

  end

end

class RandomGameGenerator
  def initialize
    @file_board_games = File.read('list_of_board_games.txt').split(',')
  end

  def rand_game
    @file_board_games[rand(@file_board_games.length)]
  end

  def format_input(input)
    input.split.each { |word| word.capitalize! }.join(' ')
  end

  def add_game(game_string)
    game_string = ',' + format_input(game_string)
    File.open('list_of_board_games.txt', 'a') { |file| file.write(game_string) }
  end

  def delete_game(input_string)
    input_string = format_input(input_string)
  end

end

game = RandomGameGenerator.new
# puts game.rand_game
# puts game.add_game('hero quest')
game.delete_game('Battle Masters')
































