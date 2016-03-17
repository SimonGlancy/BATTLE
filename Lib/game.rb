require_relative 'player'

class Game

attr_reader :player1, :player2, :players, :flipper


  def initialize(player1, player2)
    @players = [player1,player2]
    @flipper = @players.dup
  end

  def attack
    @flipper[-1].take_on_damage
    @flipper.reverse!
  end


end
