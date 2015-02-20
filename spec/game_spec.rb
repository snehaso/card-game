describe Game do
  it "On start should split stack between two players" do
    dealer = double(:dealer)
    stack = Stack.new([Card.new(1), Card.new(2), Card.new(3), Card.new(4),
                       Card.new(1), Card.new(2), Card.new(3), Card.new(4),])
    game = Game.new(dealer)
    expect(dealer).to receive(:distribute).with(stack)
    winner = double(:player)
    expect(dealer).to receive(:find_winner).and_return(winner)
    expect(game.start(stack)).to eq(winner)
  end
end