# frozen_string_literal: true

class PlayGames
  def initialize(game_number, player_list)
    @player_list = player_list
    @game_number = game_number
  end

  def what_did_you_do
    # code here
  end

  def play
    game = game_number_to_class(@game_number).new(@player_list)
    game.play
    puts game.results
  end

  def game_number_to_class(game_number)
    case game_number
    when 1
      Poker
    when 2
      Chess
    when 3
      GoGame
    else
      what_did_you_do
    end
  end
end
