describe Bank do
  it 'can deposit an amount' do
    expect(Bank.deposit(100)).to eq("You deposited 100")
  end
end
