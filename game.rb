# frozen_string_literal: true

class Game
  attr_reader :players

  def initialize(players)
    @players = []
  end


  def play
    puts "Players in the #{game_type} game:"
    @players.each { |player| puts "#{player.name}: #{player.send game_specific_message}" }
  end

  def results
    "[pretend these are #{game_type} results]"
  end
end

class Poker < Game
  def initialize(players)
    super
    players.each { |name| @players.append(Player.new(name, hand: nil)) }
  end

  def game_specific_message
    'hand'
  end

  def game_type
    'poker'
  end
end

class Chess < Game

  def initialize(players)
    super
    players.each { |name, color| @players.append(Player.new(name, color: color)) }
  end

  def game_type
    'chess'
  end

  def game_specific_message
    # A string that is translated to a function call later from a Player object
    'color'
  end
end

class GoGame < Game
  def initialize(players)
    super
    players.each { |name, color| @players.append(Player.new(name, color: color)) }
  end

  def game_type
    'go'
  end

  def game_specific_message
    'color'
  end
end
