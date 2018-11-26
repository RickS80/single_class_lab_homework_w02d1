class Team

  attr_reader :name, :players, :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def set_coach(coach_name)
    @coach = coach_name
  end

end
