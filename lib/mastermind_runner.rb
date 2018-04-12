require './lib/mastermind'
class MastermindRunner

  def initialize
    @template     = ['r','g','b','y']
    @game_array   = []
  end

  def init_game
    puts 'Welcome to MASTERMIND

    Would you like to (p)lay, read the (i)nstructions, or (q)uit?
    >'

    decision = gets.chomp
    if decision == 'q'
    puts "goodbye"
    else
    player_decision(decision)
    end
  end

  def player_decision(decision)

    if decision == 'i'
    puts 'Mastermind is a game where you will attempt to determine
      the exact order of a sequence of four colors. The colors are red,
      blue, green and yellow and will be ordered as in these examples:
      ex.1 rrgb
      ex.2 rbgy
      as you can see the colors can be repeated. You get as many attempts
      as you would like and you will be given clues along the way.'
    end

    if decision == 'p'

    mastermind.generate_random_array
    binding.pry
    puts "I have generated a beginner sequence with four elements made up of:
    (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the
    game. What's your guess?"

    answer = gets.chomp

    player_input_2(answer)
    end
  end

  def player_input_2(gamer_guess)
    game = Mastermind.new
    x = game.compare_elements(gamer_guess)
    puts "You have #{x} elements correct."
  end
end

game = MastermindRunner.new
game.init_game
