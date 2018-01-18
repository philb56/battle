class Player
  attr_reader :player_name, :score
  DEFAULT_SCORE = 100

  def initialize(name)
    @player_name = name
    @score = DEFAULT_SCORE
  end
 
  def receive_damage
    @score -= 10
  end
end
