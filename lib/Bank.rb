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
    @transactions << Transaction.new(time, "withdraw", amount)
    "You withdrew #{amount}"
  end

  def balance
    "Your balance is #{@balance}"
  end

  def statement
    statement = []
    @transactions.each do |t|
       statement << "#{t.date} || #{credit_or_debit(t, "deposit")} || #{credit_or_debit(t, "withdraw")} || #{balance}"
    end
    statement << "date || credit || debit || balance"
    statement.reverse!
    statement.each do |t|
      p t
    end
  end

  private

  def time
    Time.now.strftime("%x")
  end

  def credit_or_debit(transaction, column)
    if transaction.type == column
      transaction.amount
    end
  end

end

@bank = Bank.new
