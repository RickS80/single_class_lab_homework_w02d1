class Team

  attr_reader :name, :players, :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def set_name(name)
    @name = name
  end
  
end
