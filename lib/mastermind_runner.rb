require './lib/mastermind'
require './lib/prompts'

class MastermindRunner
  include Prompts
  attr_reader :game

  def initialize
    @game         = Mastermind.new
    @init_time    = Time.now
    @game_counter = 0
    game.generate_random_array
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
      puts message_2
      continue = gets.chomp
      if continue == 'y'
        puts "make your guess"
          answer = gets.chomp.downcase
          game_play(answer)
      elsif continue == 'n'
        puts "goodbye"
      end
    elsif selection == 'p'
        puts message_3
        selection = gets.chomp
        player_decision_p(selection)
    end
  end

  def player_decision_p(decision)
    if decision == 'c'
      puts message_4
      puts "#{game.random_array.join}"
      cheat = gets.chomp.downcase
      game_play(cheat)
    elsif
      game_play(decision)
    end
  end

  def game_play(decision)
    player_array = game.user_guess_to_array(decision)
    x = game.compare_elements(player_array)
    y = game.compare_positions(player_array)
      if game.random_array != player_array
      z = (@game_counter += 1)
      puts message_5(x,y,z)
      repeat = gets.chomp
      player_decision_p(repeat)
    end
    finish_time = Time.now
    puts "Congradulations, You are a mastermind!
          you finished in #{finish_time - @init_time}"
  end
end
