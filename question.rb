require 'pry'
require 'colorize'

class Question

  OPERATORS_LIST = [:+, :-, :*, :/]

  attr_reader :num1, :num2, :operator

  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    @operator = OPERATORS_LIST.sample
  end
    
  def play(player)  
    
    puts "It's your turn, #{player.name}"
    puts "How much is #{@num1} #{@operator} #{@num2}?"
    given_answer = gets.chomp

    if given_answer.is_a? Integer
      correct_answer = @num1.send(@operator, @num2) 

      if correct_answer.to_i == given_answer.to_i
        player.gain_points
        puts "You are correct! You now have #{player.points} points!".green
      else
        player.lose_life
        puts "That's not right! You lost a life, you are now at #{player.life}!".red
      end
    end
  end

end
















