require './test/test_helper'
require './lib/mastermind_for_testing'

class MastermindTest < Minitest::Test
# You could DRY up your test suite a bit with a setup method
#   def setup
#     @mastermind = Mastermind.new
#   end

  def test_mastermind_exists
    mastermind = Mastermind.new

    assert_instance_of Mastermind, mastermind
  end

  def test_a_default_template
    mastermind = Mastermind.new

    assert_equal ['r','g','b','y'], mastermind.template
  end

  def test_generate_random_from_template
    mastermind = Mastermind.new

    mastermind.generate_random_array

    assert_equal 4, mastermind.random_array.length

    assert mastermind.template.include? mastermind.random_array[0]
    assert mastermind.template.include? mastermind.random_array[1]
    assert mastermind.template.include? mastermind.random_array[2]
    assert mastermind.template.include? mastermind.random_array[3]

    assert mastermind.template != mastermind.random_array
  end

  def test_input_string_to_array
    mastermind = Mastermind.new

    actual = mastermind.user_guess_to_array('rrby')
    expected = ['r','r','b','y']

    assert_equal expected, actual
  end

  def test_compare_matching_elements
    mastermind = Mastermind.new

    elements = mastermind.compare_elements(mastermind.answer)

    assert_equal 3, elements
  end

  def test_compare_positions
    mastermind = Mastermind.new

    positions = mastermind.compare_positions(mastermind.answer)

    assert_equal 3, positions
  end
end
