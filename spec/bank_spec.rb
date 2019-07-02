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
    expect(subject.transactions[0].amount).to eq(34)
  end
end
