require './test/test_helper'
require './lib/mastermind_game'

class Mastermind_SketchTest < Minitest::Test

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

    mastermind.generate_random_array

    assert_equal 4, mastermind.random_array.length
    assert mastermind.template != mastermind.random_array
  end

  def test_compare_matching_elements
    mastermind = Mastermind_game.new

    assert_equal 3, mastermind.compare_elements
  end

  def test_compare_positions
    mastermind = Mastermind_game.new

    assert_equal 1, mastermind.compare_positions
  end
end
