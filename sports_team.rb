class Team

  attr_reader :name, :players
  attr_accessor :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def add_player(player_name)
    @players.push(player_name)
  end

end
