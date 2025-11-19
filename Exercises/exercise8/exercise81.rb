# Turned the hands[] Array into a dictionary for easier acces
# and less complex code
class Poker
  def initialize(players)
    @players = players
    @hands = {}
    @players.each { |player| @hands[player] = nil }
  end

  def play()
    puts "Players in the poker game:"
    @players.each { |player| puts "#{player.name}: #{@hands[player]}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are poker results]"
  end
end

class Chess
  def initialize(players)
    @players = players
  end

  def play()
    puts "Players in the chess game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
  end
end

class Go
  def initialize(players)
    @players = players
  end

  def play()
    puts "Players in the go game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are go results]"
  end
end
# Simplified all Game objects to initialize(), play(), and get_results()
# for more flexible code, reduced complexity


# Removed logic to check what type of game is being played
# Refactored the play() and get_results() functions to be
# called the same in each game class
class PlayGames
  def initialize(game)
    @game = game
  end

  def play()
    @game.play
    puts @game.get_results
  end
end

# New Player class, @color is not used by all game classes
class Player
  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end

#-----------------
# TESTING
#-----------------

alice = Player.new("alice", "white")
bob = Player.new("bob", "black")
chris = Player.new("chris", "white")
dave = Player.new("dave", "black")

games = [
    Poker.new([alice, bob, chris, dave]),
    Chess.new([alice, bob]),
    Go.new([alice, bob]),
    ]

games.each do |game|
    pg = PlayGames.new(game)
    pg.play
    puts
end
