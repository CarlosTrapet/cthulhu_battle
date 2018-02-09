require 'game'
require 'player'

describe Game do

  subject(:game) {described_class.new("carlos", "Jenny")}
  let(:player_1) { instance_double(Player, reduce_hit_points: 40, non_existant_method: true)}
  let(:player_2) { Player.new("Jenny") }

  context "#initialize" do
    it "initalizes with player as argument" do
      expect(game.player_1).to be_an_instance_of Player
    end
  end

  context "#attack" do 
    it "reduces player's hit points by 10" do
      # player_1.non_existant_method 
      # expect(player_1).to receive(:reduce_hit_points)
      expect { game.attack(player_2) }.to change {player_2.hit_points}.by (-Player::DEFAULT_ATTACK)
    end
  end
end
