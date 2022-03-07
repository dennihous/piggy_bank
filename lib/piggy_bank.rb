class PiggyBank
  attr_reader :coins
  def initialize
    @coins = 0
  end
  
  def put_coins(coins_to_add)
    @coins += coins_to_add
  end

  def shake
    if @coins > 0
      return "cling"
    end
  end

  def break
    pocket_money = @coins
    @coins = 0
    return pocket_money
  end
end