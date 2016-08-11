class Bank

  attr_reader :transactions, :balance

  def initialize
    @transactions = {}
    @balance = 0
  end

  def deposit(date, amount)
    @transactions.merge! date => amount
  end

  def withdraw(date, amount)
    @transactions.merge! date => -amount
  end

  def stringify_transactions(dates, credits, debits, balance)
    "#{dates} || #{credits} || #{debits} || #{balance}\n"
  end

  def format_transactions
    result = []
    @transactions.each do |date, amount|
      if amount < 0
        @balance += amount
        result << stringify_transactions(date, "", amount.abs, @balance)
      else
        @balance += amount
        result << stringify_transactions(date, amount, "", @balance)
      end
    end
    result.reverse.join
  end

  def print_statement
    "date || credit || debit || balance\n" + format_transactions
  end

end
