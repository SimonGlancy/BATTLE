require 'game'

describe Game do

  let(:player1){double(:player1)}
  let(:player2){double(:player2)}
  subject(:game) {described_class.new(player1, player2)}

  describe "#attack" do
    it 'calls take on damage method in opponent' do
      expect(player2).to receive(:take_on_damage)
      game.attack
    end
  end

  describe "#change_attackee" do
    it 'changes the attackee' do
      game.change_attackee
      expect(game.attacked_player).to be player1
    end
  end
end
