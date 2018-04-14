module Prompts

  def message_1
    'Welcome to MASTERMIND

    Would you like to (p)lay, read the (i)nstructions, or (q)uit?
    >'
  end

  def message_2
    'Mastermind is a game where you will attempt to determine
     the exact order of a sequence of four colors. The colors are red,
     blue, green and yellow and will be ordered as in these examples:
     ex.1 rrgb
     ex.2 rbgy
     as you can see the colors can be repeated. You get as many attempts
     as you would like and you will be given clues along the way.

     Would you like to continue (y)es or (n)o?'
  end

  def message_3
    "I have generated a beginner sequence with four elements made up of:
    (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the
    game. What's your guess?"
  end

  def message_4
    "Here is the sequence I have generated.
     Enter it to complete the game"
  end

  def message_5(x,y,z)
    "You have guessed #{x} of the correct elements
     with #{y} in the correct positions. You've taken
    #{z} guesses"
  end
end
