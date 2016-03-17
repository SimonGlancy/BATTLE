require_relative 'player'

class Game

attr_reader :player1, :player2, :attacked_player


  def initialize(player1, player2)
    @player1 =player1
    @player2 = player2
    @attacked_player = @player2
  end

  def attack
    @attacked_player.take_on_damage
    change_attackee
  end

  def change_attackee
    @attacked_player = (@attacked_player == @player2 ? @player1 : @player2)
  end


end
