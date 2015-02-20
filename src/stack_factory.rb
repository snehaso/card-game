class StackFactory

  def self.create_stack
    Stack.new([Card.new(1), Card.new(2), Card.new(3), Card.new(4),
               Card.new(1), Card.new(2), Card.new(3), Card.new(4),])
  end
end
