describe Transaction do
  it 'has an initialize method with three parameters' do
    expect(Transaction).to respond_to(:new).with(3).arguments
  end

  it 'can have information read' do
    transaction = Transaction.new("1/1/1", "deposit", 1)
    expect(transaction.date).to eq("1/1/1")
    expect(transaction.type).to eq("deposit")
    expect(transaction.amount).to eq(1)
  end
end
