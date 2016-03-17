require 'game'

describe Game do

  let(:player1){double(:player1)}
  let(:player2){double(:player2)}
  subject(:game) {described_class.new(player1, player2, player_class: player_class)}
  let(:player_class) { double(:player_class, new: player) }
  let(:player_class) { double(:player_class, new: player2) }

  describe "#initialise" do
    it 'creates a new player' do
      expect(player_class).to receive(:new)
      game
    end
  end

  describe "#attack" do
    it 'calls take on damage method in opponent' do
      expect(player2).to receive(:take_on_damage)
      game.attack(player2)
    end
  end

  describe "#change_attackee" do
    it 'changes the attackee' do
      game.change_attackee
      expect(game.attacked_player).to be player1
    end
  end
end
