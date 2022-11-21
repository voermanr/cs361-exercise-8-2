# frozen_string_literal: true

class Player
  attr_reader :name, :hand, :color

  def initialize(name, player_parts = {})
    @name = name
    @color = player_parts.fetch :color if player_parts.key? :color
    @hand = player_parts.fetch :hand if player_parts.key? :hand
  end
end
