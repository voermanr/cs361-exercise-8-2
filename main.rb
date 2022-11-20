# frozen_string_literal: true

require './game'

class GoPlayer
  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end

class PlayGames
  def initialize(game_number, player_list)
    @player_list = player_list
    @game_number = game_number
  end

  def play
    case @game_number
      # Cleaned up each case
    when 1
      play_poker_and_print_results
    when 2
      play_chess_and_print_results
    when 3
      play_go_and_print_results
    else
      throw(NoMethodError)
    end
  end

  # Added new functions for tidiness
  def play_poker_and_print_results
    poker = Poker.new(@player_list)
    poker.play
    puts poker.results
  end

  def play_chess_and_print_results
    chess = Chess.new(@player_list)
    chess.play_game
    puts chess.results
  end

  def play_go_and_print_results
    go = GoGame.new(@player_list)
    go.play
    puts go.score
  end
end

pg = PlayGames.new(1, %w[alice bob chris dave])
pg.play

puts

pg = PlayGames.new(2, [%w[alice white], %w[bob black]])
pg.play

puts

pg = PlayGames.new(3, [%w[alice white], %w[bob black]])
pg.play


