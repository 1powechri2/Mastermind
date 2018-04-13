require './lib/mastermind'
class MastermindRunner

  attr_reader :game

  def initialize
    @game = Mastermind.new
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
    game.generate_random_array

    if decision == 'i'
    puts 'Mastermind is a game where you will attempt to determine
      the exact order of a sequence of four colors. The colors are red,
      blue, green and yellow and will be ordered as in these examples:
      ex.1 rrgb
      ex.2 rbgy
      as you can see the colors can be repeated. You get as many attempts
      as you would like and you will be given clues along the way.

      If you would like to continue (y)es or (n)o?'

      continue = gets.chomp.downcase
        if continue == 'y'

        elsif continue == 'n'
          puts "gopodbye"
        end

    elsif decision == 'p'

    puts "I have generated a beginner sequence with four elements made up of:
    (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the
    game. What's your guess?"

    answer = gets.chomp
      if answer == 'c'
        puts "#{game.random_array.join}"
      elsif
        game_play(answer)
      end
    end
  end

  def game_play(answer)
    x = game.compare_elements(answer)
    y = game.compare_positions(answer)
    puts " has #{x} of the correct elements with #{y} in the correct positions
         You've taken #{} guess"
  end
end


mastermind = MastermindRunner.new
mastermind.init_game
