require 'pry'
require_relative "deck"
require_relative "card"


class Hand
  attr_accessor :score

  def initialize(cards = [])
    @cards = cards
    @score = 0
  end

  def calculate_hand
    @score = 0
    @cards.each do |card|
      @score += card.value
    end
    @cards.each do |card|
      if card.rank == "A" && @score > 21
      @score -= 10
      end
    end
    @score
  end

  def cards
    @cards
  end
end
