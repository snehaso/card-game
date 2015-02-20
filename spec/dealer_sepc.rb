require 'spec_helper'
describe Dealer do
  it 'should split cards equally between two players' do
    player_1 = instance_double(Player)
    player_2 = instance_double(Player)
    [player_1, player_2].each do |p|
      expect(p).to receive(:assign_stack) do |stack|
        expect(stack.size).to eq(4)
      end
    end
    dealer = Dealer.new(player_1, player_2)
    dealer.distribute(StackFactory.create_stack)
  end
  context 'decide winner' do

    context 'Game with single card each player' do
      it 'should return player_2 as winner if player_2 has bigger card' do
        player_1 = Player.new()
        player_1.assign_stack(Stack.new([Card.new(1)]))
        player_2 = Player.new()
        player_2.assign_stack(Stack.new([Card.new(2)]))

        dealer = Dealer.new(player_1, player_2)
        expect(dealer.find_winner).to eq(player_2)
      end
    end

    context 'Game with multiple cards each player' do
      it 'player_1 is winner if he has all big cards in row' do
        player_1 = Player.new()
        player_1.assign_stack(Stack.new([Card.new(2), Card.new(3)]))
        player_2 = Player.new()
        player_2.assign_stack(Stack.new([Card.new(1), Card.new(2)]))

        expect(Dealer.new(player_1, player_2).find_winner).to eq(player_1)
      end

      it 'player_2 is winner since he has last few big cards' do
        player_1 = Player.new()
        player_1.assign_stack(Stack.new([Card.new(1), Card.new(1), Card.new(7), Card.new(3), Card.new(5)]))
        player_2 = Player.new()
        player_2.assign_stack(Stack.new([Card.new(2), Card.new(1), Card.new(5), Card.new(1), Card.new(2)]))

        expect(Dealer.new(player_1, player_2).find_winner).to eq(player_1)
      end

    end

  end

end



