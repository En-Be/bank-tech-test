# frozen_string_literal: true

describe Bank do
  it 'calculates the current balance' do
    deposit = rand(100)
    subject.deposit(deposit)

    withdrawal = rand(100)
    subject.withdraw(withdrawal)

    expect(subject.balance).to eq(deposit - withdrawal)
  end

  it 'has somewhere to record transactions' do
    expect(subject.transactions).to eq([])
  end

  it 'can have a transaction added' do
    subject.deposit(34)
    time = Time.now.strftime('%x')
    expect(subject.transactions[0].date).to eq(time)
    expect(subject.transactions[0].type).to eq('deposit')
    expect(subject.transactions[0].amount).to eq('34.00')
  end

  it 'view the statement header' do
    expect(subject.statement[0]).to eq('date || credit || debit || balance')
  end

  it 'formats a transaction for viewing' do
    amount = 34.00
    subject.deposit(amount)
    time = Time.now.strftime('%x')
    expect(subject.statement[0]).to eq('date || credit || debit || balance')
    expect(subject.statement[1]).to eq("#{time} || 34.00 ||  || 34.00")
  end

  it 'can print the full statement' do
    subject.deposit(10)
    subject.withdraw(7)
    time = Time.now.strftime('%x')
    expect(subject.statement[0]).to eq('date || credit || debit || balance')
    expect(subject.statement[1]).to eq("#{time} ||  || 7.00 || 3.00")
    expect(subject.statement[2]).to eq("#{time} || 10.00 ||  || 10.00")
  end
end
