class Mastermind_game

  attr_reader :template,
              :random_array,
              :test_array_1,
              :test_array_2

  def initialize
    @template     = ['r','g','b','y']
    @random_array = []
    @test_array_1 = ['r','r','y','g']
    @test_array_2 = ['r','y','g','b']
    @counter_1    = 0
    @counter_2    = 0
  end

  def generate_random_array
    while random_array.length < 4
      random_array << template.sample
    end
  end

  def compare_elements
    test_array_2.each do |color|
      if test_array_1.include?(color)
        @counter_1 += 1
      end
    end
    @counter_1
  end

  def compare_positions
    test_array_1.each_index do |i|
      if test_array_1[i] == test_array_2[i]
        @counter_2 += 1
      end
    end
    @counter_2
  end

end
