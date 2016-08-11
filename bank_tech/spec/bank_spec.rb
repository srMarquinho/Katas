require "bank"

describe Bank do

  subject(:bank) { described_class.new }

  before :each do
    @date = "01/01/1001"
    @amount = 99.99
  end

  describe "attributes" do
    it { is_expected.to have_attributes(transactions: {}) }
  end

  describe "#balance" do
    it "has a inital balance of 0" do
      expect(bank.balance).to eq 0
    end
  end

  describe "#deposit" do
    it "can store date and amount as hash" do
      bank.deposit @date, @amount
      expect([bank.transactions]).to eq [{ @date => @amount }]
    end
  end

  describe "#withdraw" do
    it "can store date and amount as hash" do
      bank.withdraw @date, @amount
      expect([bank.transactions]).to eq [{ @date => -@amount}]
    end
  end

  describe "#print" do
    it "can print as required" do
      bank.deposit @date, @amount
      bank.withdraw @date, @amount
      expect(bank.print_statement).to eq "date || credit || debit || balance\n01/01/1001 ||  || 99.99 || -99.99\n"
    end
  end
end
