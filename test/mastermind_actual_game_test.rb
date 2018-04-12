require './test/test_helper'
require './lib/mastermind'

class MastermindTest < Minitest::Test
  def test_mastermind_exists
    mastermind = Mastermind_game.new

    assert_instance_of Mastermind_game, mastermind
  end

end
