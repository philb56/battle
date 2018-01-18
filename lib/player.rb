class Player
  attr_reader :player_name, :score
  DEFAULT_SCORE = 100

  def initialize(name)
    @player_name = name
    @score = DEFAULT_SCORE
  end

  def attack(player)
    player.under_attack
  end

  def under_attack
    @score -= 10
  end
end
