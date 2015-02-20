require 'spec_helper'
describe Card do
  context 'card equality' do
    it 'should return true if two cards have same value' do
      card1 = Card.new(1)
      card2 = Card.new(1)
      expect(card1).to eq(card2)
    end

    it 'should return false if two cards have different values' do
      card1 = Card.new(1)
      card2 = Card.new(2)
      expect(card1).not_to eq(card2)
    end

    it 'should return false if card is comapared with nil' do
      card1 =Card.new(1)
      expect(card1).not_to eq(nil)
    end

    it 'should return false if card is compared with other object type' do
      card1 = Card.new(1)
      expect(card1).not_to eq(Object.new)
    end

    it 'should return true if card1 is greater than card2' do
      card1 = Card.new(3)
      card2 = Card.new(1)
      expect(card1.greater_than(card2)).to eq(true)
      expect(card2.greater_than(card1)).to eq(false)
    end
  end

  context "card creation" do
    it "should throw expection if card has value less than or eq to 0" do
      expect { Card.new(-1) }.to raise_error ArgumentError, "value should be greater than 0"
    end
  end

end