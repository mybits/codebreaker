module Codebreaker
  class Game

    def initialize(output)
      @output = output
    end

    def start(secret)
      @secret = secret
      @output.puts "Welcome to Codebreaker!"
      @output.puts "Enter your guess:"
    end

   def guess(guess)
      if exact_match?(guess, 0)
        mark = '+'
      elsif match_number?(guess, 0)
        mark = '-'
      else
        mark = ''
      end
      @output.puts mark
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

    def match_number?(guess, index)
      @secret.include?(guess[index])
    end

  end
end
