class Dealer
  def initialize player1, player2
    @player1 = player1
    @player2 = player2
  end

  def distribute stack
    stacks = stack.split_into_two
    @player1.assign_stack(stacks.first)
    @player2.assign_stack(stacks.last)
  end


  def find_winner
    saved_cards = []
    while (!@player1.cards_finished? && !@player2.cards_finished?)
      player_1_card = @player1.throw_card
      player_2_card = @player2.throw_card
      saved_cards << player_1_card
      saved_cards << player_2_card

      if player_1_card == player_2_card
        next
      else
        hand_winner = player_1_card.greater_than(player_2_card) ? @player1 : @player2
        hand_winner.append_cards(saved_cards)
        saved_cards = []
      end

    end
    @player1.cards_finished? ? @player2 : @player1
  end
end
