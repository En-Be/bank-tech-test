# frozen_string_literal: true

class Bank
  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    "You deposited #{amount}"
  end

  def withdraw(amount)
    @balance -= amount
    "You withdrew #{amount}"
  end

  def balance
    "Your balance is #{@balance}"
  end
end

@bank = Bank.new
p @bank
