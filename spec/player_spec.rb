require 'Player'

describe Player do
  subject(:player) {described_class.new("Brian")}
  let(:player2){double(:player2, take_on_damage: nil)}

  describe "#name" do
    it "1.0 player has a name" do
      expect(player.name).not_to be nil
    end
  end

  describe "#take_on_damage" do
    it '2.0 reduces players life by 10%' do
      expect{player.take_on_damage}.to change{player.life}.by(-Player::DEFAULT_DAMAGE)
    end
  end


end
