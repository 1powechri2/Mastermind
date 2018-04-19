require './lib/mastermind'
require './lib/prompts'

class MastermindRunner
  include Prompts
  attr_reader :game

  def initialize
    @game         = Mastermind.new
    @init_time    = Time.now
    @game_counter = 0
    @player_guess = nil
    game.generate_random_array
  end

  def init_game
    puts message_1
    selection = gets.chomp
    player_decision(selection)
  end

  def player_decision(selection)
    # Introduce the saving boolean to variable pattern here
    if selection == 'q'
      # I would move this to the module as well
      puts "goodbye"
    elsif selection == 'i'
      puts message_2
      continue = gets.chomp
      if continue == 'y'
        # I would move this to the module as well
        puts "make your guess"
          answer = gets.chomp.downcase
          load_the_player(answer)
      elsif continue == 'n'
        # I would move this to the module as well
        puts "goodbye"
      end
    elsif selection == 'p'
        puts message_3
        @player_guess = gets.chomp
        player_decision_p(@player_guess)
    end
  end

  def player_decision_p(decision)
    if decision == 'c'
      puts message_4
      puts "#{game.random_array.join}"
      @player_guess = gets.chomp.downcase
      load_the_player(@player_guess)
    elsif
      load_the_player(decision)
    end
  end

  def load_the_player(guess)
    # The split logic might make more sense here
    player_array = game.user_guess_to_array(guess)
    game_play(player_array)
  end

def game_play(player_array)
    @game_counter += 1
    # Variable names
    x = game.compare_elements(player_array)
    y = game.compare_positions(player_array)
    # Split the variable arguments with spaces here
    puts message_5(x,y,@game_counter)
    if game.random_array != player_array
      @player_guess = gets.chomp
      load_the_player(@player_guess)
    else
       finish_time = Time.now
      puts "Congradulations, You are a mastermind!
          you finished in #{(finish_time - @init_time)/60} minutes"
          # The interpolated bit should be its own method.
    end
  end
end

#This can be in its own file
awesome = MastermindRunner.new
awesome.init_game
