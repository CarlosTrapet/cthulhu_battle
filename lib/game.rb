
class Game

  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @current_turn = @player_1
  end

  def attack
    if @current_turn == @player_1
      @player_2.reduce_hit_points
    elsif @current_turn == @player_2
      @player_1.reduce_hit_points
    end
  end

  # *** REFACTOR?? TOO MESSY?? *****
  def switch_turns
    if @current_turn == @player_1
      @current_turn = @player_2
    elsif @current_turn == @player_2
      @current_turn = @player_1
    end
  end

  def game_over?
    @player_1.hit_points <= 0 || @player_2.hit_points <= 0
  end
end