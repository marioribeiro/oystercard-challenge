class Oystercard

  MAXIMUM_BALANCE = 90

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(amount)
    fail "Error: Maximum balance exceeded" if @balance + amount > MAXIMUM_BALANCE
    @balance += amount
  end

end