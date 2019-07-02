# frozen_string_literal: true

require './lib/Transaction.rb'

class Bank
  attr_reader :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new(time, 'deposit', amount, balance)
    "You deposited #{amount}"
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << Transaction.new(time, 'withdraw', amount, balance)
    "You withdrew #{amount}"
  end

  attr_reader :balance

  def statement
    statement = []
    @transactions.each do |t|
      statement << "#{t.date} || #{credit_or_debit(t, 'deposit')} || #{credit_or_debit(t, 'withdraw')} || #{t.balance}"
    end
    statement << 'date || credit || debit || balance'
    statement.reverse!
    statement.each do |t|
      puts t
    end
  end

  private

  def time
    Time.now.strftime('%x')
  end

  def credit_or_debit(transaction, column)
    transaction.amount if transaction.type == column
  end
end

@bank = Bank.new
