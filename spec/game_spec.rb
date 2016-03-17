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


    it 'changes the attackee' do
      allow(player2).to receive(:take_on_damage)
      game.attack
      expect(game.flipper[0]).to be player2
    end
  end
end
