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

end




end