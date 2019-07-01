# frozen_string_literal: true

describe Bank do
  it 'calculates the current balance' do
    deposit = rand(100)
    subject.deposit(deposit)

    withdrawal = rand(100)
    subject.withdraw(withdrawal)

    expect(subject.balance).to eq("Your balance is #{deposit - withdrawal}")
  end

  it 'can print the statement' do
    subject.deposit(10)
    subject.withdraw(5)
    # expect(Bank.statement.to eq()
  end
end
