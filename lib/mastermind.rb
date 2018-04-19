class Mastermind

  attr_reader :template,
              :random_array,
              :test_array,
              :answer

  def initialize
    @template     = ['r','g','b','y']
    @random_array = []
  end

  def generate_random_array
    while random_array.length < 4
      # Possibly move this up to initialize
      # I would continue using the @ in front of instance variables
      # It is a bit less confusing (for me) that way.
      random_array << template.sample
    end
  end

  def user_guess_to_array(guess)
    guess.split("")
  end

  def compare_elements(answer)
    counter = 0
    answer.uniq.each do |color|
      if random_array.include?(color)
        counter += 1
      end
    end
    counter
  end

  def compare_positions(answer)
    counter = 0
    answer.each_index do |i|
      if random_array[i] == answer[i]
        counter += 1
      end
    end
    counter
  end

end
