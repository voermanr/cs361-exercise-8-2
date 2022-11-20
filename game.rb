# frozen_string_literal: true

class Game
  def initialize(players)
    @players = players
  end

  def play
    play
  end

  def results
    "[pretend these are #{self.game_type} results]"
  end
end

class Poker < Game
  def initialize(players)
    super
    @hands = []
    players.length.times { @hands.append(nil) }
  end

  def play
    puts 'Players in the poker game:'
    @players.length.times { |i| puts "#{player_name(i)}: #{player_hand(i)}" }
    # [pretend there's code here]
  end

  def player_name(index)
    @players[index]
  end

  # @todo change to player class
  def player_hand(index)
    @hands[index]
  end

  def play_poker
    # code here
  end

  def game_type
    'poker'
  end
end

class Chess < Game
  def play_game
    puts 'Players in the chess game:'
    @players.length.times { |x| puts "#{player_name(x)}: #{@players[x][1]}" }
    # [pretend there's code here]
  end

  def game_type
    'chess'
  end

  def player_name(index)
    @players[index][0]
  end
end

class GoGame
  def initialize(players)
    @players = []
    players.each { |x, y| @players.append(GoPlayer.new(x, y)) }
  end

  def play
    puts 'Players in the go game:'
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def score
    '[pretend these are go results]'
  end

  def game_type
    'go'
  end
end
