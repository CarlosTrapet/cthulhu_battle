require 'game'
require 'player'

describe Game do

  subject(:game) {described_class.new("Waitrose", "Tesco")}
  # let(:player_1) { instance_double (Player, :reduce_hit_points => 40)}
  let(:player_1) { game.player_1 }
  let(:player_2) { game.player_2 }

  context "#initialize" do
    it "initalizes with player as argument" do
      expect(game.player_1).to be_an_instance_of Player
    end
  end

  context "#attack" do 
    it "reduces player's hit points by 10" do
      # player_1.non_existant_method 
      # expect(player_1).to receive(:reduce_hit_points)
      expect { game.attack }.to change {player_2.hit_points}.by (-Player::DEFAULT_ATTACK)
    end
  end

  context "#current turn" do 
    it "starts as player1's turn" do 
      expect(game.current_turn).to eq player_1
    end
  end

  context "#switch_turns" do 
    it "switches turns" do 
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end
end
