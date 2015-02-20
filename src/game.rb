require_relative 'card'
require_relative 'stack'
require_relative 'dealer'
require_relative 'game'
require_relative 'player'
require_relative 'stack_factory'

class Game
  def initialize dealer
    @dealer = dealer
  end

  def start stack
    @dealer.distribute(stack)
    @dealer.find_winner
  end
end
