require 'pry'

require_relative "card"
require_relative "deck"
require_relative "hand"

myDeck = Deck.new

player = Hand.new

puts "Welcome to Blackjack!\n"

2.times do
  player.cards << myDeck.draw!
  puts "Player was dealt #{player.cards[-1].show}"
end

puts "Player's score is #{player.calculate_hand}\n"

if player.calculate_hand == 21
  puts "Player stands."
else
  puts "Hit or Stand (H/S): "
  input = gets.chomp.downcase
    until ["s", "h"].include?(input)
      puts "Please enter H or S"
      input = gets.chomp.downcase
    end
end

while input == 'h'
  player.cards << myDeck.draw!
  puts "Player was dealt #{player.cards[-1].show}"
  puts "Player's score is #{player.calculate_hand}\n"
  if player.calculate_hand == 21
    puts "Player stands."
    break
  elsif player.calculate_hand > 21
    puts "Busted!"
    exit!
  else
    puts "Hit or Stand (H/S): "
    input = gets.chomp.downcase
    until ["s", "h"].include?(input)
      puts "Please enter H or S"
      input = gets.chomp.downcase
    end
  end
  puts "Player stands."
end

dealer = Hand.new

2.times do
  dealer.cards << myDeck.draw!
  puts "Dealer was dealt #{dealer.cards[-1].show}"
end

puts "Dealer's score is: #{dealer.calculate_hand}"

while dealer.calculate_hand < 17 
  dealer.cards << myDeck.draw!
  puts "Dealer hits!"
  puts "Dealer was dealt #{dealer.cards[-1].show}"
  puts "Dealer's score is: #{dealer.calculate_hand}"
end

if dealer.calculate_hand == player.calculate_hand
  puts "It's a PUUSSSHHHH!!!!"
elsif dealer.calculate_hand > player.calculate_hand && dealer.calculate_hand <= 21
  puts "Dealer wins!"
elsif player.calculate_hand == 21
  puts "Blackjack! You win!"
elsif dealer.calculate_hand < player.calculate_hand || dealer.calculate_hand > 21
  puts "You win!"
end
