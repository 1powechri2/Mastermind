class MastermindGame

  attr_reader :template,
              :random_array,
              :answer

  def initialize
    @template     = ['r','g','b','y']
    @random_array = []

    @answer = ['r','y','g','b']
  end

  def generate_random_array
    while random_array.length < 4
      random_array << template.sample
    end
  end

  def compare_elements(user_guess)
    counter_1 = 0
    answer.each do |color|
      if user_guess.include?(color)
        counter_1 += 1
      end
    end
    counter_1
  end

  def compare_positions
    user_guess.each_index do |i|
      if user_guess[i] == answer[i]
        @counter_2 += 1
      end
    end
    @counter_2
  end

end
