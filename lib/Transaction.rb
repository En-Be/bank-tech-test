# frozen_string_literal: true

class Transaction
  attr_reader :type, :amount, :balance

  def initialize(type, amount, balance)
    @date = date
    @type = type
    @amount = amount
    @balance = balance
  end

  def date
    Time.now.strftime('%x')
  end
end
