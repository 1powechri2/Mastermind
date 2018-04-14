require './lib/mastermind'
require './lib/prompts'
require 'pry'

class MastermindRunner
  include Prompts
  attr_reader :game

  def initialize
    @game = Mastermind.new
    game.generate_random_array
    @game_counter = 0
  end

  def init_game
    puts message_1
    selection = gets.chomp
    player_decision(selection)
  end

  def player_decision(selection)
    if selection == 'q'
      puts "goodbye"
    elsif selection == 'i'
      player_decision_i(selection)
    elsif selection == 'p'
      player_decision_p(selection)
    end
  end

  def player_decision_i(decision)
    if decision == 'i'
      puts message_2
      continue = gets.chomp
        if continue == 'y'
          puts "make your guess"
            answer = gets.chomp.downcase
            game_play(answer)
        elsif continue == 'n'
          puts "goodbye"
        end
      end
    end

    def player_decision_p(decision)
    puts message_3
    answer = gets.chomp
      if answer == 'c'
        puts message_4
        puts "#{game.random_array.join}"
        cheat = gets.chomp.downcase
        game_play(cheat)
      elsif
        game_play(answer)
      end
    end

  def game_play(answer)
    player_array = game.user_guess_to_array(answer)
    while game.random_array != player_array
      z = @game_counter += 1
      x = game.compare_elements(player_array)
      y = game.compare_positions(player_array)
      puts message_5(x,y,z)
      again = gets.chomp
      game_play(again)
    end
    puts "Congradulations, You are a mastermind!"
  end
end

mastermind = MastermindRunner.new
mastermind.init_game
