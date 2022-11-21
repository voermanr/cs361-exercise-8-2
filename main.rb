# frozen_string_literal: true

require_relative 'player'
require_relative 'game'
require_relative 'play_games'


# I refactored a ton on this one. I think that the classes are laid out much better.
# A lot of the work came down to generalizing the functions and making the code DRY.

pg = PlayGames.new(1, %w[alice bob chris dave])
pg.play

puts

pg = PlayGames.new(2, [%w[alice white], %w[bob black]])
pg.play

puts

pg = PlayGames.new(3, [%w[alice white], %w[bob black]])
pg.play
