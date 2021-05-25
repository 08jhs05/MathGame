require './game.rb'
require './player.rb'
require './questions.rb'

p1 = Player.new("player 1")
p2 = Player.new("player 2")

game = Game.new(p1, p2, Questions)

game.run