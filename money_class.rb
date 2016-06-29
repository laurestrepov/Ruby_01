class MoneyClass
  def self.calculate
    money = 100
    has_money = true
    while has_money do
      puts 'Keep buying !'
      money = money - 10
      has_money = false if money == 0
    end
    money
  end


end
