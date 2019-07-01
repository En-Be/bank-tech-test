# frozen_string_literal: true

class Transaction
  attr_reader :date, :type, :amount, :balance

  def initialize(date, type, amount, balance)
    @date = date
    @type = type
    @amount = format('%.2f', amount.to_f)
    @balance = format('%.2f', balance.to_f)
  end
end
