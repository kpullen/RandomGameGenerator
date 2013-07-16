require 'yaml'

class GamePersistence
  DEFAULT_FILENAME = ENV.fetch('GAME_PATH') { 'tmp/gamelist' }

  def initialize(path=nil)
    @filename = path || DEFAULT_FILENAME
  end

  attr_reader :filename

  def load
    Yaml.load(filename)
  end

  def save(data)
    Yaml.dump(filename, data)
  end
end

class GameCollection
  def self.new_with_path(path)
    @storage = GamePersistence.new(path)
  end

  def initialize
    @storage = GamePersistence.new
    @games = load
  end

  # attr_reader :games
  def games
    return @games ||= load
  end

  def random_game
    games.shuffle.take(1)
  end

  def delete(name)
    games.delete(name)
  end

  def add(name)
    games.push(name)
  end

  def save
    @storage.save(games)
  end

  def load
    @games = @storage.load
  end
end

collection = GameCollection.new_with_path('.')
collection.add('Masters of Ba\'ah')
collection.add('Sword of Scheeholihan')
collection.save