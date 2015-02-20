class Player
  def assign_stack stack
    @stack = stack
  end

  def throw_card
    @stack.pop
  end

  def stack_size
    @stack.size
  end

  def append_cards(cards)
    @stack.append_cards(cards)
  end

  def cards_finished?
    @stack.empty?
  end
end