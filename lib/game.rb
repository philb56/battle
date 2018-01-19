class Game
  attr_reader :current_turn

  def self.new_game(player_1, player_2)
    @game_instance = Game.new(player_1, player_2)
  end

  def self.game_instance
    @game_instance
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack
    opponent_of(@current_turn).receive_damage
  end

  def switch_turns
    @current_turn = opponent_of(@current_turn)
  end

  private

  def opponent_of(current_player)
    @players.select {|player| player != current_player}.first
  end
end
