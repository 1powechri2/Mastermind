require './lib/mastermind'

class MastermindRunner

  attr_reader :game

  def initialize
    @game = Mastermind.new
    @mastermind_array = game.generate_random_array
    @game_counter = 0
  end

  def init_game
    puts 'Welcome to MASTERMIND

    Would you like to (p)lay, read the (i)nstructions, or (q)uit?
    >'

    decision = gets.chomp

    if decision == 'q'
      puts "goodbye"
    elsif decision == 'i'
      player_decision_i(decision)
    elsif decision == 'p'
      player_decision_p(decision)
    end
  end

  def player_decision_i(decision)

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
          puts "make your guess"
            answer = gets.chomp
            game_play(answer)
        elsif continue == 'n'
          puts "goodbye"
        end
      end
    end

    def player_decision_p(decision)

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

  def game_play(answer)
    player_array = game.user_guess_to_array(answer)
    heck_yes = player_array
    while @mastermind_array != player_array
      z = @game_counter += 1
      x = game.compare_elements(heck_yes)
      y = game.compare_positions(heck_yes)
      puts "You have guessed #{x} of the correct elements
            with #{y} in the correct positions You've taken
            #{z} guesses"
      again = gets.chomp
      game_play(again)
    end
    puts "Congradulations, You are a mastermind!"
  end
end

mastermind = MastermindRunner.new
mastermind.init_game
