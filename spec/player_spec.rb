require 'player'

describe Player do
  subject(:player) { described_class.new "Bob" }
  subject(:player2) { described_class.new "Martin" }

  describe "#initialize" do
    it '1.0 should return a name' do
      expect(player.name).to eq("Bob")
    end

    it '1.1 should return hit points' do
      expect(player.points).to eq(Player::START_POINTS)
    end
  end

  describe "#deduct" do
    it "2.0 reduces the life" do
      srand(122)
      expect{player.deduct}.to change{player.points}.by -Player::DEDUCT_POINTS
    end
  end
end
