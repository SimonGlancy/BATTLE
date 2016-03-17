require_relative 'player'

class Game

attr_reader :player1, :player2, :attacked_player


  def initialize(player1, player2, player_class: Player)
    @player_class = player_class
    @player1 = @player_class.new(player1)
    @player2 = @player_class.new(player2)
    @attacked_player = @player2
  end

  def attack(player)
    player.take_on_damage
    #change_atackee
  end

  def change_attackee
    @attacked_player = (@attacked_player == @player2 ? @player1 : @player2)
  end


end
