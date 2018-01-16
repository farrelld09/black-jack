class Card
  attr_reader :value, :rank, :suit

  def initialize (rank, suit)
    @rank = rank
    @suit = suit
    @value = 0
    if ["J", "Q", "K"].include?(rank)
      @value = 10
    elsif ["A"].include?(rank)
      @value = 11
    else
      @value = rank
    end
  end

  def show
    "#{@rank}#{@suit}"
  end
end
