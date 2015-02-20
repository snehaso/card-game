class Stack
  ARRAY_BEGIN_INDEX = 0

  def initialize cards
    @cards = cards
  end

  def split_into_two
    arr = []
    @cards.each_slice(size / 2).collect do |a|
      arr << Stack.new(a)
    end
    arr
  end

  def size
    @cards.size
  end

  def pop
    @cards.pop
  end

  def append_cards cards
    @cards = cards + @cards
  end

  def empty?
    @cards.empty?
  end
end