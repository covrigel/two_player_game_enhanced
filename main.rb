require_relative 'question'
require_relative 'player'
require 'colorize'

# keep track of turns
# declare a winner
# output final score

puts "Player one - enter your name:"
input1 = gets.chomp
@player1 = Player.new(input1)

puts "Player two - enter your name:"
input2 = gets.chomp
@player2 = Player.new(input2)



def gameplay

  loop do 

    game1 = Question.new
    game1.play(@player1)
    game2 = Question.new
    game2.play(@player2)

    if @player1.dead? || @player2.dead?
      puts "it's a tie!"
    elsif @player1.dead?
      puts "GAME OVER!".red
      puts "#{@player2.name} wins with #{@player2.points} points!".yellow
    elsif @player2.dead?
      puts "GAME! OVER".red
      puts "#{@player1.name} wins with #{@player1.points} points!".yellow
    end

    break if @player1.dead? || @player2.dead?

  end

end

gameplay




