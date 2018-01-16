require "spec_helper"

RSpec.describe Hand do
  let(:myHand) { Hand.new([Card.new("J", "♠"), Card.new(7,"♠")]) }
  describe "#calculate_hand" do
    it "calculates the hand" do
      expect(myHand.calculate_hand).to eq(17)
    end
  end
end

# let(:card1) { Card.new("J", "♠") }
# describe "#show" do
#   it "shows the rank and suite of the card" do
#     expect(card1.show).to eq("J♠")
#   end
# end
