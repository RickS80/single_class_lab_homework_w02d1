require ('minitest/autorun')
require ('minitest/rg')

require_relative('../sports_team.rb')

class TestTeam < Minitest::Test

  def test_initialise_team
    players = ["Smith", "Jackson", "Jordan", "Yaoming", "O'Neill"]
    team = Team.new("Jaguars", players, "Ferguson")
    assert_equal("Jaguars", team.name)
    assert_equal(players, team.players)
    assert_equal("Ferguson", team.coach)
    assert_equal(0, team.points)
  end

  def test_set_team_coach
    players = ["Smith", "Jackson", "Jordan", "Yaoming", "O'Neill"]
    team = Team.new("Jaguars", players, "Ferguson")
    team.coach = "Morinho"
    assert_equal("Morinho", team.coach)
  end

  def test_add_player
    #arrange
    players = ["Smith", "Jackson", "Jordan", "Yaoming", "O'Neill"]
    team = Team.new("Jaguars", players, "Ferguson")

    #act
    team.add_player("O'hara")

    #assert
    lineup = team.players
    assert_equal(["Smith", "Jackson", "Jordan", "Yaoming", "O'Neill", "O'hara"], lineup)
  end

  def test_player_in_team__exists
    players = ["Smith", "Jackson", "Jordan", "Yaoming", "O'Neill"]
    team = Team.new("Jaguars", players, "Ferguson")
    assert_equal(true, team.player_in_team("Jordan"))
  end

  def test_player_in_team__does_not_exist
    players = ["Smith", "Jackson", "Jordan", "Yaoming", "O'Neill"]
    team = Team.new("Jaguars", players, "Ferguson")
    assert_equal(false, team.player_in_team("Kowalski"))
  end

end
