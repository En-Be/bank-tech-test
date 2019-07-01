# frozen_string_literal: true

class Bank
  attr_reader :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new(time, "deposit", amount)
    "You deposited #{amount}"
  end

  def withdraw(amount)
    @balance -= amount
    "You withdrew #{amount}"
  end

  def balance
    "Your balance is #{@balance}"
  end

  def statement
    @transactions
  end

private

  def time
    Time.now.strftime("%x")
  end
  
end

@bank = Bank.new
