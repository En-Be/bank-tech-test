# frozen_string_literal: true

require './lib/transaction.rb'
require './lib/statement_formatter.rb'

class Bank
  attr_reader :balance, :transactions

  def initialize
    @balance = 0.00
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new(:deposit, amount, balance)
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << Transaction.new(:withdraw, amount, balance)
  end

  def statement
    puts format_statement(@transactions)
  end

end

@bank = Bank.new
