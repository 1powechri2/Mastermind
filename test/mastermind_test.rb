require './test/test_helper'
require './lib/mastermind_game'

class Mastermind_GameTest < Minitest::Test

  def test_mastermind_exists
    mastermind = Mastermind_game.new

    assert_instance_of Mastermind_game, mastermind
  end

  def test_a_default_template
    mastermind = Mastermind_game.new

    assert_equal ['r','g','b','y'], mastermind.template
  end

  def test_generate_random_from_template
    mastermind = Mastermind_game.new

    assert_equal 4, mastermind.random.count
  end

  def test_compare_matching_elements
    mastermind = Mastermind_game.new

    assert_equal 3, mastermind.compare_elements
  end

  def test_compare_matching_positons
    mastermind = Mastermind_game.new

    assert_equal 2, mastermind.compare_positions
  end
end
