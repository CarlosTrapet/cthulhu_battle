
class Player

attr_reader :name, :hit_points

  DEFAULT_HITPOINTS = 50
  DEFAULT_ATTACK = 10 

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HITPOINTS
  end

  def reduce_hit_points
    @hit_points -= DEFAULT_ATTACK
  end
end
