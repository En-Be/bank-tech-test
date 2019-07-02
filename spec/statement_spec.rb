# frozen_string_literal: true

describe Bank do
  it 'view the statement header' do
    expect { subject.statement }.to output("date || credit || debit || balance\n").to_stdout
  end

  it 'formats a transaction for viewing' do
    amount = 34.00
    subject.deposit(amount)
    time = Time.now.strftime('%x')
    expect { subject.statement }.to output("date || credit || debit || balance\n#{time} || 34.00 ||  || 34.00\n").to_stdout
  end

  it 'can print the full statement' do
    subject.deposit(10)
    subject.withdraw(7)
    time = Time.now.strftime('%x')
    expect { subject.statement }.to output("date || credit || debit || balance\n#{time} ||  || 7.00 || 3.00\n#{time} || 10.00 ||  || 10.00\n").to_stdout
  end
end
