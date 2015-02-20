require 'spec_helper'

describe Stack do
  it 'should split stack in two equals' do
    stack = Stack.new([Card.new(1), Card.new(2), Card.new(3), Card.new(4),
                       Card.new(1), Card.new(2), Card.new(3), Card.new(4),])
    output_stacks = stack.split_into_two
    expect(output_stacks.size).to eq(2)
    expect(output_stacks.first.size).to eq(4)
    expect(output_stacks.last.size).to eq(4)
  end

  it "should append card at the beginning of existing list" do
    s = Stack.new([Card.new(1), Card.new(2)])
    s.append_cards([Card.new(3), Card.new(4)])
    expect(s.pop).to eq(Card.new(2))
    expect(s.pop).to eq(Card.new(1))
    expect(s.pop).to eq(Card.new(4))
    expect(s.pop).to eq(Card.new(3))
  end

  it 'should return true if stack empty' do
    stack = Stack.new([Card.new(1)])
    expect(stack.empty?).to be(false)

    stack.pop
    expect(stack.empty?).to be(true)
  end
end