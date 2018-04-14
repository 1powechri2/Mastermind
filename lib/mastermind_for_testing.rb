class Mastermind

  attr_reader :template,
              :random_array,
              :test_array,
              :answer

  def initialize
    @template     = ['r','g','b','y']
    @random_array = []
    @test_array   = ['r','y','g','b']
    @answer       = ['r','y','y','b']
  end

  def generate_random_array
    while random_array.length < 4
      random_array << template.sample
    end
  end

  def user_guess_to_array(guess)
    guess.split("")
  end

  def compare_elements(answer)
    counter = 0
    answer.uniq.each do |color|
      if test_array.include?(color)
        counter += 1
      end
    end
    counter
  end

  def compare_positions(answer)
    counter = 0
    answer.each_index do |i|
      if test_array[i] == answer[i]
        counter += 1
      end
    end
    counter
  end

end
