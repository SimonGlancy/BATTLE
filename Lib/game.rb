require_relative 'player'

class Game


  def initialize(player1, player2, player_class: Player)
    @player_class = player_class
    $player1 = @player_class.new(player1)
    $player2 = @player_class.new(player2)
    $attacked_player = $player2
  end

  def attack(player)
    player.take_on_damage
    #change_atackee
  end

  def change_atackee
     $attacked_player = $player2 ? $attacked_player = $player1 : $attacked_player = $player2
  end

  def player1
    $player1
  end

  def player2
    $player2
  end

  def attacked_player
    $attacked_player
  end

end
