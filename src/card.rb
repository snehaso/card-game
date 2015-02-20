class Card
  def initialize value
    raise ArgumentError.new("value should be greater than 0") if value < 1
    @value = value
  end

  def ==(other)
    return false if other.nil? || other.class != self.class
    @value == other.value
  end

  def greater_than(other)
    return false if other.nil? || other.class != self.class
    @value > other.value
  end

  protected
  attr_reader :value
end