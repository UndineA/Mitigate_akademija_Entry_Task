class CoinManager
  def initialize
    @balance = 0.0
  end

  def add_coins(amount)
    if amount >= 0
      @balance += amount
    end
  end

  def balance
    @balance
  end

  def deduct_amount(amount)
    return false if amount > @balance

    @balance -= amount
    true
  end

  def reset_balance
    20
  end
end
