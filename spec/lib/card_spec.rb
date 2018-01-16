require "spec_helper"

RSpec.describe Card do
  let(:card1) { Card.new("J", "♠") }
  describe "#show" do
    it "shows the rank and suite of the card" do
      expect(card1.show).to eq("J♠")
    end
  end

  describe "#rank" do
    it "shows the rank of the card" do
      expect(card1.rank).to eq("J")
    end
  end
end
