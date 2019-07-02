# frozen_string_literal: true

describe Bank do
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
