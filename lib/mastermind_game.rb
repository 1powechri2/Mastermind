class Mastermind_game

  attr_reader :template,
              :random_array,
              :test_array_1,
              :test_array_2,
              :counter

  def initialize
    @template     = ['r','g','b','y']
    @random_array = []
    @test_array_1 = ['r','r','y','g']
    @test_array_2 = ['r','b','r','g']
    @counter_1    = 0
    @counter_2    = 0
  end

  def random
    while random_array.length < 4
      random_array << template.sample
    end
    random_array
  end

  def compare_elements
    test_array_1.each do |color|
      if test_array_2.include?(color)
        @counter_1 += 1
      end
    end
    @counter_1
  end

  def compare_positions
    test_array_1.each do |color|
      if color = test_array_2[0]
        @counter_2 += 1
      elsif color = test_array_2[1]
        @counter_2 += 1
      elsif color = test_array_2[2]
        @counter_2 += 1
      elsif color = test_array_2[3]
        @counter_2 += 1
      end
    end
    @counter_2
  end
end
