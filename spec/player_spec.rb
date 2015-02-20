require 'spec_helper'

describe Player do
  it 'should return the top most card card on throw' do
    player = Player.new()
    card = Card.new(1)
    stack = Stack.new([Card.new(2), card])

    player.assign_stack(stack)
    expect(player.throw_card).to eq(card)
  end

  it 'should append new cards to his stack' do
    player = Player.new
    cards = [Card.new(7), Card.new(8)]
    player.assign_stack(StackFactory.create_stack)

    expect(player.stack_size).to eq(8)

    player.append_cards(cards)
    expect(player.stack_size).to eq(10)
  end
end
