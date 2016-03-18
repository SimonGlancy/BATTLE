require 'game'

describe Game do
  let(:player1) { double :player, name: "Bob" }
  let(:player2) { double :player, points: 5 }
  subject(:game) { described_class.new player1, player2 }

  before do
    allow(player1).to receive(:deduct)
    allow(player2).to receive(:deduct)
  end

  describe '#attack' do
      it '1.0 player1 should receive method deduct when attacked' do
        expect(player2).to receive(:deduct)
        game.attack
      end

      it '1.1 should swap players the second attack' do
        expect(player1).to receive(:deduct)
        game.attack
        game.attack
      end
  end

  describe '#player1' do
    it '3.0 should retrieve the first player' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it '4.0 should retrieve the second player' do
      expect(game.player2).to eq player2
    end
  end

end
