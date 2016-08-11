require "bank"

describe "FEATURE" do
  it "can print as required" do

    bank = Bank.new

    bank.deposit "10/01/2011", 1000.00
    bank.deposit "13/01/2011", 2000.00
    bank.withdraw "14/01/2011", 500.00

    result = bank.print_statement

    expect(result). to eq("date || credit || debit || balance\n14/01/2011 ||  || 500.0 || 2500.0\n13/01/2011 || 2000.0 ||  || 3000.0\n10/01/2011 || 1000.0 ||  || 1000.0\n")

    # p "====================================="
    # print result
    # p "====================================="

  end
end
